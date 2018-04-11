"""
Class for storing mesh values and mesh locations
"""

from numpy import empty, linspace, float64, array
from poly import buildLagrangeCoeffs

class Mesh(object):

    __slots__ = (
        'upwindMeshes', 'downwindMeshes', 'corners', 'material', 'femPoints',
        'coeffs', 'recent', 'polyOrder', 'points', '__polyWeights', 'manager', 
        'nAngles', '__bc', '__scalarCoeffs')

    def __init__(self, manager, points, material, polyOrder):
        self.manager = manager
        self.material = material
        self.corners = points
        self.polyOrder = polyOrder
        self.upwindMeshes = {}
        self.downwindMeshes = {}
        self.coeffs = None
        self.recent = None
        self.__polyWeights = None
        self.__bc = [None, None]
        self.__scalarCoeffs = None
        self.nAngles = manager.nAngles
        self.femPoints = linspace(
            self.corners[0], self.corners[-1], polyOrder + 1)

    @property
    def scalarCoeffs(self):
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

    def initialize(self, timePoints):
        nFemPoints = self.femPoints.size
        self.coeffs = empty((timePoints, self.nAngles, nFemPoints), dtype=float64)
        points = [(p, 1) for p in self.femPoints]
        self.recent = empty((2, nFemPoints), dtype=float64)

    @property
    def polyWeights(self):
        if self.__polyWeights is None:
            self.__polyWeights = buildLagrangeCoeffs(self.femPoints)
        return self.__polyWeights

    def __repr__(self):
        hxID = hex(id(self))
        return ("<mesh.Mesh object bounded by {} at {}>"
                .format(self.corners, hxID))
    
    def addBC(self, mu, value):
        indx = -1 if mu < 0 else 0
        self.__bc[indx] = value
    
    def setInitialValue(self, value):
        """Apply a constant value across this element."""
        value = float64(value)
        self.coeffs[0, :] = value

