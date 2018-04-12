"""
Class for storing mesh values and mesh locations
"""
from itertools import product
from numpy import empty, linspace, float64, array, fabs
from poly import buildLagrangeCoeffs

SOURCE_FACTOR = float64(0.5)


class Mesh(object):

    __slots__ = (
        'upwindMeshes', 'downwindMeshes', 'corners', 'material', 'femPoints',
        'coeffs', 'recent', 'polyOrder', 'points', '__polyWeights', 'manager', 
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
        self.upwindMeshes = {}
        self.downwindMeshes = {}
        self.coeffs = None
        self.recent = None
        self.__polyWeights = None
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
            raise AttributeError("Scalar coeffs not set")
        if not self.__scalarCoeffs:
            raise AttributeError("Scalar coeffs are empty")
        return self.__scalarCoeffs[0]

    @scalarCoeffs.setter
    def scalarCoeffs(self, value):
        if self.__scalarCoeffs is None:
            self.__scalarCoeffs = []
        self.__scalarCoeffs.insert(0, value)
        if len(self.__scalarCoeffs) > 2:
            self.__scalarCoeffs.pop()

    @property
    def source(self):
        """Most recent source vector for the inner solves."""
        if self.__source is None:
            raise AttributeError("Source is not set")
        if not self.__source:
            raise AttributeError("Source is empty")
        return self.__source[0]        

    def initialize(self, timePoints):
        """Prep necessary arrays for calculation."""
        nFemPoints = self.femPoints.size
        self.coeffs = empty((timePoints, self.nAngles, nFemPoints), dtype=float64)
        points = [(p, 1) for p in self.femPoints]
        self.recent = empty((2, nFemPoints), dtype=float64)

    @property
    def polyWeights(self):
        """Polynomial weights required to reconstruct the mesh flux."""
        if self.__polyWeights is None:
            self.__polyWeights = buildLagrangeCoeffs(self.femPoints)
        return self.__polyWeights

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
        self.__scalarCoeffs = [(self.coeffs[0] * self.manager.weights).sum(axis=0)]
        self.__source = []

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
