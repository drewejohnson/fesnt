"""
Class for storing mesh values and mesh locations
"""
from itertools import product as iter_product
from numpy import empty, linspace, float64, array, fabs, zeros, product, power
from poly import buildLagrangeCoeffs

SOURCE_FACTOR = float64(0.5)
POLY_ORDER = 2
NOT_RDY_MSG = "{} {} for mesh {}"
SIMPSONS_COEFFS = array((0.5, 2, 0.5))

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
        'upwindMeshes', 'corners', 'material', 'femPoints', 'dx',
        'coeffs', '__recent',  'points', 'polyWeights', 'manager', 
        'nAngles', '__bc', '__scalarCoeffs', '__source', '__unknowns',
        'sourceXS', '__sigT')

    def __init__(self, manager, points, material):
        self.manager = manager
        self.material = material
        xs = material.xs
        self.corners = (points.min(), points.max())
        self.dx = self.corners[1] - self.corners[0]
        sourceXS = SOURCE_FACTOR * (
            xs['scatt0'] + xs['chit'] * xs['nubar'] * xs['fiss']) * self.dx * 0.5
        self.__sigT = xs['total'][0]
        self.sourceXS = sourceXS[0]
        self.coeffs = None
        self.upwindMeshes = {}
        self.__recent = None
        self.polyWeights = None
        self.__bc = [None, None]
        self.__scalarCoeffs = None
        self.__source = None
        self.__unknowns = {}
        self.nAngles = manager.nAngles
        self.femPoints = linspace(
            self.corners[0], self.corners[-1], POLY_ORDER+ 1)

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
        self.__unknowns = {mu: nFemPoints for mu in self.manager.angles[:, 0]}

    def __repr__(self):
        hxID = hex(id(self))
        return ("<mesh.Mesh object bounded by {} at {}>"
                .format(self.corners, hxID))
    
    def addBC(self, mu, value):
        """Apply a boundary condition to this mesh for a given mu."""
        indx = -1 if mu < 0 else 0
        self.__bc[indx] = value
        self.__unknowns[mu] = self.femPoints.size - 1
    
    def setInitialValue(self, value):
        """Apply a constant value across this element."""
        value = float64(value)
        self.coeffs[0].fill(value)
        self.__scalarCoeffs.prepend((self.coeffs[0] * self.manager.weights).sum(axis=0))
        self.__source = LIFOList()
   
    def updateSourceOuter(self, tn):
        """Create the internal source vector for each trial function."""
        scalar = self.scalarCoeffs
        nu = self.femPoints.size
        newSource = empty((nu, nu), dtype=float64)
        newSource.fill(self.sourceXS)
        for ii, jj in iter_product(range(nu), range(nu)):
            mult = (4 if jj == 1 else 1)  # multiplier for simpsons integration
        #TODO: Update source vector for each iteration with integral coeffs from known fluxes from upwind, boundary conditions
            newSource[ii, jj] = self.femPoints[jj] ** ii * scalar[jj] * mult
        self.__source.prepend(newSource.sum(axis=1))
        self.__recents.prepend(self.coefs[tn - 1])
        return self.source

    def sourceDifference(self):
        """Return the difference between source vectors."""
        if len(self.__source) == 1:
            return
        return fabs(self.__source[0] - self.__source[1]).max()

    def solve(self, indexMu, mu, muPos, timeLevel, tn, dt):
        """Solve the FEM for this mesh."""
        source = self.__updateSource(mu, indexMu, muPos, tn, dt)
        upwM = self.upwindMeshes[mu]
        nU = self.nUnknowns[mu]
        if upwM is not None:
            upwPntIndx = -1 if muPos else 0
            xUpw = upwM.femPoints[upwPntIndx]
            upwValue = upwM.recent[upwPntIndx]
            for ii in range(nU):
                source[ii] += upwValue * xUpw ** ii
        coeffM = empty((nU, nU), dtype=float64)
        #TODO: Implement full matrix formulation
        #TODO:W: Cython inner linear solve?

    def __updateSource(self, mu, indexMu, muPos, tn, dt):
        source = self.source
        bc = self.__bc[0 if muPos else -1]
        upwM = self.upwindMeshes[mu]
        jmpValue = 0
        bcValue = 0
        fromTMatrix = None 
        muAbs = fabs(mu) if muPos else mu
        if upwM is not None:
            upwPntIndx = -1 if muPos else 0
            xUpw = upwM.femPoints[upwPntIndx]
            upwValue = upwM.recent[0, indexMu, upwPntIndx]
            jmpValue = muAbs * upwValue
        if bc is not None and bc != 0:
            boundIndx = 0 if muPos else -1
            boundX = self.femPoints[boundIndx]
            if isinstance(bc, (float, int)):
                if bc > 0:
                    bcValue = bc
                else:
                    bcValue = self.recent[-1 - indexMu, boundIndx]
            else:
                bcValue = bc(tn, mu)
        self.__recent[0][indexMu, boundIndx] = bcValue
        if bcValue:
            #
            # add simpson's integration terms
            #
            fromAMatrix = mu * (self.polyWeights[1:, boundIndx] * (1, 2) * 
                                bcValue * self.dx * 0.5)
        if dt:
            fromTMatrix = ((self.coeffs[tn - 1, mu, :] * self.dx) * SIMPSONS_COEFFS 
                            / dt)
        for ii in range(self.__unknowns[mu]):
            if jmpValue:
                source[ii] += jmpValue * (xUpw ** ii)
            if bcValue:
                intSum = (fromAMatrix* power(boundX, (ii, ii +1))).sum()
                source[ii] -= bcValue * intSum
            if fromTMatrix is not None:
                source[ii] += (fromTMatrix * power(self.femPoints, ii).sum())
        return source


    def getFluxDifference(self):
        """Return the difference between fluxes between two iterations."""
        #TODO: Implement flux difference
