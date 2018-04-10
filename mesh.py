"""
Class for storing mesh values and mesh locations
"""

from numpy import empty, linspace, float64

class Mesh(object):

    __slots__ = (
        'upwindMeshes', 'downwindMeshes', 'corners', 'material', 'femPoints',
        'coeffs', 'recent', 'polyOrder', 'polyWeights', 'manager', 'nAngles')

    def __init__(self, manager, corners, material, polyOrder):
        self.manager = manager
        self.material = material
        self.corners = corners
        self.polyOrder = polyOrder
        self.upwindMeshes = {}
        self.downwindMeshes = {}
        self.coeffs = None
        self.recent = None
        self.polyWeights = None
        self.nAngles = manager.nAngles
        self.femPoints = linspace(corners.min(), corners.max(), 
                                  polyOrder + 1)

    def initialize(self, timePoints):
        nFemPoints = self.femPoints.size()
        self.coeffs = empty((timePoints, nFemPoints), dtype=float64)
        self.recent = empty((2, nFemPoints), dtype=float64)

