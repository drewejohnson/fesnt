"""
Class for storing mesh values and mesh locations
"""
from itertools import product
from numpy import empty, linspace, float64, array, fabs, zeros
from poly import buildLagrangeCoeffs

SOURCE_FACTOR = float64(0.5)

NOT_RDY_MSG = "{} {} for mesh {}"


class LIFOList(list):
    """LIFO list that stores two items.
        Meant to store attributes across two iterations
    """
    def prepend(self, value):
        list.insert(self, 0, value)
        if len(self) > 2:
            self.pop()

class Mesh(object):

    __slots__ = (
        'upwindMeshes', 'corners', 'material', 'femPoints',
        'coeffs', '__recent', 'polyOrder', 'points', 'polyWeights', 'manager', 
        'nAngles', '__bc', '__scalarCoeffs', '__source', '__unknowns',
        'sourceXS')

    def __init__(self, manager, points, material, polyOrder):
        self.manager = manager
        self.material = material
        xs = material.xs
        self.sourceXS = SOURCE_FACTOR * (
            xs['scatt0'] + xs['chit'] * xs['nubar'] * xs['fiss'])
        self.corners = points
        self.polyOrder = polyOrder
        self.coeffs = None
        self.upwindMeshes = {}
        self.__recent = None
        self.polyWeights = None
        self.__bc = [None, None]
        self.__scalarCoeffs = None
        self.__source = None
        self.__unknowns = None
        self.nAngles = manager.nAngles
        self.femPoints = linspace(
            self.corners[0], self.corners[-1], polyOrder + 1)

    
    @property
    def scalarCoeffs(self):
        """Coefficients for reconstructing the scalar flux."""
        if self.__scalarCoeffs is None:
            raise AttributeError(NOT_RDY_MSG.format('Scalar coeffs',
                                                    'not set', self))
        if not self.__scalarCoeffs:
            raise AttributeError(NOT_RDY_MSG.format("Scalar coeffs",
                                                    'are empty', self))
        return self.__scalarCoeffs[0].copy()

    @property
    def recent(self):
        if self.__recent is None:
            raise AttributeError(NOT_RDY_MSG.format('Recents',
                                                    'not set', self))
        if not self.__recent:
            raise AttributeError(NOT_RDY_MSG.format("Recents",
                                                    'are empty', self))
        return self.__recent[0].copy()
    @property
    def source(self):
        """Most recent source vector for the inner solves."""
        if self.__source is None:
            raise AttributeError(NOT_RDY_MSG.format("Source",
                                                    "not set", self))
        if not self.__source:
            raise AttributeError(NOT_RDY_MSG.format("Source",
                                                    "empty", self))
        return self.__source[0].copy()

    def initialize(self, timePoints):
        """Prep necessary arrays for calculation."""
        nFemPoints = self.femPoints.size
        self.coeffs = empty((timePoints, self.nAngles, nFemPoints), dtype=float64)
        points = [(p, 1) for p in self.femPoints]
        self.polyWeights = buildLagrangeCoeffs(points)
        self.__recent = LIFOList()
        self.__scalarCoeffs = LIFOList()

    def __repr__(self):
        hxID = hex(id(self))
        return ("<mesh.Mesh object bounded by {} at {}>"
                .format(self.corners, hxID))
    
    def addBC(self, mu, value):
        """Apply a boundary condition to this mesh for a given mu."""
        indx = -1 if mu < 0 else 0
        self.__bc[indx] = value
    
    def setInitialValue(self, value):
        """Apply a constant value across this element."""
        value = float64(value)
        self.coeffs[0].fill(value)
        self.__scalarCoeffs.prepend((self.coeffs[0] * self.manager.weights).sum(axis=0))
        self.__source = LIFOList()

    @property
    def nUnknowns(self):
        """Number of unknowns required to solve for flux moments for each mu"""
        if self.__unknowns is None:
            self.__unknowns = (len(self.femPoints) 
                               - (0 if self.__bc == [None, None] else 1))
        return self.__unknowns
   
    def updateSourceOuter(self):
        """Create the internal source vector for each trial function."""
        scalar = self.scalarCoeffs
        nr, nc = self.nUnknowns, self.femPoints.size
        newSource = empty((nr, nc), dtype=float64)
        for ii, jj in product(range(nr), range(nc)):
            newSource[ii, jj] = self.femPoints[jj] ** ii * scalar[jj]
        self.__source.insert(0, newSource.sum(axis=1))
        if len(self.__source) == 3:
            self.__source.pop()
        return self.source

    def sourceDifference(self):
        """Return the difference between source vectors."""
        if len(self.__source) == 1:
            return
        return fabs(self.__source[0] - self.__source[1]).max()

    def solve(self, indexMu, mu, muPos, timeLevel, tn):
        """Solve the FEM for this mesh."""
        source = self.__updateSource(mu, indexMu, muPos, tn)
        upwM = self.upwindMeshes[mu]
        nU = self.nUnknowns
        if upwM is not None:
            upwPntIndx = -1 if muPos else 0
            xUpw = upwM.femPoints[upwPntIndx]
            upwValue = upwM.recent[upwPntIndx]
            for ii in range(nU):
                source[ii] += upwValue * xUpw ** ii
        coeffM = empty((self.nUnknowns, self.nUnknowns), dtype=float64)

    def __updateSource(self, mu, indexMu, muPos, tn):
        source = self.source
        bc = self.__bc[0 if muPos else 1]
        upwM = self.upwindMeshes[mu]
        jmpValue = 0
        bcValue = 0
        if upwM is None or bc is None:
            return source
        if upwM is not None:
            upwPntIndx = -1 if muPos else 0
            xUpw = upwM.femPoints[upwPntIndx]
            upwValue = upwM.recent[0, indexMu, upwPntIndx]
            muAbs = fabs(mu) if muPos else mu
            jmpValue = muAbs * upwValue
        if bc is not None and bc != 0:
            boundIndx = 0 if muPos else -1
            boundX = self.femPoints[boundIndx]
            if isinstance(bc, (float, int)):
                bc > 0:
                    bcValue = bc
                else:
                    bcValue = self.recent[-1 - indexMu, boundIndx]
            else:
                bcValue = bc(tn, mu)
        for ii in range(self.nUnknowns):
            if jmpValue:
                source[ii] += jmpValue * (xUpw ** ii)
            if bcValue:
                source[ii] += bcValue * (boundX ** ii)
        return source

    def getFluxDifference(self):
        """Return the difference between fluxes between two iterations."""
