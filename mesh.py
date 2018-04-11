"""
Class for storing mesh values and mesh locations
"""

from numpy import empty, linspace, float64, array
from poly import buildLagrangeCoeffs

class Mesh(object):

    __slots__ = (
        'upwindMeshes', 'downwindMeshes', 'corners', 'material', 'femPoints',
        'coeffs', 'recent', 'polyOrder', 'points', 'polyWeights', 'manager', 
        'nAngles', '__bc')

    def __init__(self, manager, points, material, polyOrder):
        self.manager = manager
        self.material = material
        self.corners = points
        self.polyOrder = polyOrder
        self.upwindMeshes = {}
        self.downwindMeshes = {}
        self.coeffs = None
        self.recent = None
        self.polyWeights = None
        self.__bc = [None, None]
        self.nAngles = manager.nAngles
        self.femPoints = linspace(
            self.corners[0], self.corners[-1], polyOrder + 1)

    def initialize(self, timePoints):
        nFemPoints = self.femPoints.size
        self.coeffs = empty((timePoints, nFemPoints), dtype=float64)
        points = [(p, 1) for p in self.femPoints]
        self.polyWeights = buildLagrangeCoeffs(points)
        self.recent = empty((2, nFemPoints), dtype=float64)

    def __repr__(self):
        hxID = hex(id(self))
        return ("<mesh.Mesh object bounded by {} at {}>".format(self.corners, 
                                                               hxID))
    

    def addBC(self, mu, value):
        indx = -1 if mu < 0 else 0
        self.__bc[indx] = value

