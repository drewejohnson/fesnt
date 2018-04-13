"""
Class for storing mesh values and mesh locations
"""
from itertools import product as iter_product
from numpy import (empty, linspace, float64, array, fabs, zeros, multiply,
                   power, empty_like)
from poly import buildLagrangeCoeffs
from scipy.linalg import solve as linalg_solve
SOURCE_FACTOR = float64(0.5)
POLY_ORDER = 2
NOT_RDY_MSG = "{} {} for mesh {}"
SIMPSONS_COEFFS_HALVED = array((0.5, 2, 0.5))

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
        'coeffs', '__inner',  'points', 'polyWeights', 'manager', 
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
        self.__sigT = xs['tot'][0]
        self.sourceXS = sourceXS[0]
        self.coeffs = None
        self.upwindMeshes = {}
        self.__inner = None
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
    def source(self):
        """Most recent source vector for the inner solves."""
        if self.__source is None:
            raise AttributeError(NOT_RDY_MSG.format("Source",
                                                    "not set", self))
        if not self.__source:
            raise AttributeError(NOT_RDY_MSG.format("Source",
                                                    "empty", self))
        return self.__source[0].copy()

    def inner(self, innerIndex):
        if self.__inner is None:
            raise AttributeError(NOT_RDY_MSG.format("Inner", "not set",
                                                    self))
        return self.__inner[innerIndex].copy()

    def initialize(self, timePoints, innerIterations):
        """Prep necessary arrays for calculation."""
        nFemPoints = self.femPoints.size
        self.coeffs = empty((timePoints, self.nAngles, nFemPoints), dtype=float64)
        points = [(p, 1) for p in self.femPoints]
        self.polyWeights = buildLagrangeCoeffs(points)
        self.__inner = empty((innerIterations, self.nAngles, nFemPoints), 
                             dtype=float64)
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
        for ii, jj in iter_product(range(nu), repeat=2):
            mult = (4 if jj == 1 else 1)  # multiplier for simpsons integration
        #TODO: Update source vector for each iteration with integral coeffs from known fluxes from upwind, boundary conditions
            newSource[ii, jj] = self.femPoints[jj] ** ii * scalar[jj] * mult
        self.__source.prepend(newSource.sum(axis=1))
        return self.source

    def sourceDifference(self):
        """Return the difference between source vectors."""
        if len(self.__source) == 1:
            return
        return fabs(self.__source[0] - self.__source[1]).max()

    def solveInner(self, indexMu, mu, muPos, tn, dt, innerIndex):
        """Solve the FEM for this mesh at the given time level and inner iteration."""
        source = self.__updateSourceInner(mu, indexMu, muPos, tn, dt, innerIndex)
        upwM = self.upwindMeshes[mu]
        nU = self.__unknowns[mu]
        upwJump = None
        thisJump = None 
        if nU != len(self.femPoints):
            jVec = (1, 2) if muPos else (0, 1)
        else:
            jVec = range(nU)
        jVec = array(jVec)
        #TODO:W: Store jVec on __unknowns so we don't have to rebuild
        coeffM = self.__buildAMatrix(nU, jVec) * mu
        if upwM is not None:
            #TODO:W: Share this code with __updateSourceInner
            upwPntIndex = 2 if muPos else 0
            thisPntIndex = 0 if muPos else 2 
            xUpw = upwM.femPoints[upwPntIndex]
            upwValue = upwM.inner(innerIndex)[indexMu, upwPntIndex]
            thisValue = self.__inner[innerIndex, indexMu ,thisPntIndex]
        tMatrixLead = self.__sigT + (1 / dt if dt else 0)
        for ii in range(nU):
            if upwJump:
                source[ii] += upwValue * (xUpw ** ii)
                # b matrix - jump terms
            if thisJump:
                coeffM[ii, thisPntIndex] += thisValue * (xUpw * ii)  
            for jj in jVec:
                coeffM[ii, jj] += (tMatrixLead * SIMPSONS_COEFFS_HALVED[jj] 
                                   * (self.femPoints[jj] ** ii))
        # the actual solve
        soln = linalg_solve(coeffM, source)
        self.__inner[innerIndex, indexMu, jVec] = soln
        return soln

    def __updateSourceInner(self, mu, indexMu, muPos, tn, dt, innerIndex):
        source = self.source[:self.__unknowns[mu]]
        boundIndex = 0 if muPos else -1
        bc = self.__bc[boundIndex]
        upwM = self.upwindMeshes[mu]
        jmpValue = 0
        bcValue = 0
        boundX = self.femPoints[boundIndex]
        fromTMatrix = None 
        muAbs = fabs(mu) if muPos else mu
        if upwM is not None:
            upwPntIndex = -1 if muPos else 0
            xUpw = upwM.femPoints[upwPntIndex]
            upwValue = upwM.inner(innerIndex)[indexMu, upwPntIndex]
            jmpValue = muAbs * upwValue
        if bc is not None and bc != 0:
            if isinstance(bc, (float, int)):
                if bc > 0:
                    bcValue = bc
                else:
                    bcValue = self.recent[-1 - indexMu, boundIndex]
            else:
                bcValue = bc(tn, mu)
        self.__inner[innerIndex, indexMu, boundIndex] = bcValue
        if bcValue:
            #
            # add simpson's integration terms
            #
            fromAMatrix = mu * (self.polyWeights[1:, boundIndex] * (1, 2) * 
                                bcValue * self.dx * 0.5)
        if dt:
            fromTMatrix = ((self.coeffs[tn - 1, indexMu, :] * self.dx) * 
                           SIMPSONS_COEFFS_HALVED / dt)
        for ii in range(self.__unknowns[mu]):
            if jmpValue:
                source[ii] += jmpValue * (xUpw ** ii)
            if bcValue:
                intSum = (fromAMatrix* power(boundX, (ii, ii +1))).sum()
                source[ii] -= bcValue * intSum
            if fromTMatrix is not None:
                source[ii] += (fromTMatrix * power(self.femPoints, ii)).sum()
        return source

    def __buildAMatrix(self, nU, jVec):
        """Build the inner iteration matrix for d\psi/dx."""
        coeffM = empty((nU, nU), dtype=float64)
        for ii, jj in iter_product(range(nU), repeat=2):
            temp = 0
            for ll, alpha in enumerate(self.polyWeights[jj]):
                temp += ll * alpha * self.femPoints[jVec[jj]] ** (ll - 1 + ii)
            coeffM[ii, jj] = temp * SIMPSONS_COEFFS_HALVED[jj]
            
        return coeffM * self.dx

    def getFluxDifference(self, innerIndex):
        """Return the difference between fluxes between two iterations."""
        #TODO: Implement flux difference
        return fabs((self.__inner[innerIndex] 
                    - self.__inner[innerIndex - 1]).max())

    def finishInner(self, innerIndex):
        scratch = self.__inner[innerIndex]
        self.__inner = empty_like(self.__inner)
        self.__inner[0] = scratch

