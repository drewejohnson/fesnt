"""
Class for storing mesh values and mesh locations

TODO: *******TEST FUNCTIONS SATISFY HOMOG BOUNDARY CONDITIONS *****************
"""
from itertools import product
from numpy import (empty, linspace, float64, array, fabs, zeros, multiply,
                   power, empty_like, arange, zeros_like)
from numpy.linalg import solve
from scipy.linalg import cho_factor, cho_solve
from poly import buildLagrangeCoeffs
SOURCE_FACTOR = float64(0.5)
POLY_ORDER = 2
NOT_RDY_MSG = "{} {} for mesh {}"
SIMPSONS_COEFFS_HALVED = array((0.5, 2, 0.5))
QUADRATIC_INDICES = arange(3)
class Mesh(object):

    __slots__ = (
        'upwindMeshes', 'corners', 'material', 'femPoints', 'dx',
        'coeffs', '__inner',  'points', 'polyWeights', 'manager', 
        'nAngles', '__bc', '__unknowns', '__source',
        'sourceXS', '__sigT', '__invv')

    def __init__(self, manager, points, material):
        self.manager = manager
        self.material = material
        xs = material.xs
        self.corners = (points.min(), points.max())
        self.dx = self.corners[1] - self.corners[0]
        sourceXS = SOURCE_FACTOR * (
            xs['scatt0'] + xs['chit'] * xs['nubar'] * xs['fiss']) * self.dx * 0.5
        self.__sigT = xs['tot'][0]
        self.__invv = xs['invv'][0]
        self.sourceXS = sourceXS[0]
        self.coeffs = None
        self.upwindMeshes = {}
        self.__source = None
        self.__inner = None
        self.polyWeights = None
        self.__bc = [None, None]
        self.__unknowns = {}
        self.nAngles = manager.nAngles
        self.femPoints = linspace(
            self.corners[0], self.corners[-1], POLY_ORDER+ 1)

    @property
    def source(self):
        if self.__source is None:
            raise AttributeError(NOT_RDY_MSG.format("Source", "not ready",
                                                    self))
        return self.__source.copy()

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
        self.__unknowns = {mu: nFemPoints for mu in self.manager.angles}

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
        self.__inner[0] = self.coeffs[0]
   
    def getFluxDifference(self, innerIndex):
        """Return the difference between fluxes between two iterations."""
        #TODO: Make this a relative difference - watch out for 1/0 errors 
        if not innerIndex:
            return
        return fabs((self.__inner[innerIndex + 1] 
                    - self.__inner[innerIndex]).max())

    def buildASubMatrix(self, nUnknowns):
        """Build the matrix of ``a_{i,j}`` coefficients
        TODO:W: Store these on the object? Maybe not ideal for large problems
        """
        mat = empty((nUnknowns, self.femPoints.size), dtype=float64,
                    order='F')
        alphas = self.polyWeights
        for ii, jj in product(range(nUnknowns), range(self.femPoints.size)):
            temp = 0
            for ll in range(1, POLY_ORDER + 1):
                qvec = multiply(SIMPSONS_COEFFS_HALVED, 
                                power(self.femPoints, ll - 1 + ii))
                temp += ll * alphas[jj, ll] * qvec.sum()
            mat[ii, jj] = temp
        return mat * self.dx

    def buildBSubMatrix(self, nUnknowns, xCol):
        """Return the matrix of ``b_{i,j}`` coefficients."""
        subM = zeros((nUnknowns, self.femPoints.size), dtype=float64,
                     order='F')
        xPoint = self.femPoints[xCol]
        for ii in range(nUnknowns):
            subM[ii, xCol] = xPoint ** ii
        return subM

    def _subMatrixCandD(self, nUnknowns):
        mat = empty((nUnknowns, self.femPoints.size), dtype=float64,
                    order='F')
        for ii, jj in product(range(nUnknowns), range(self.femPoints.size)):
            mat[ii, jj] = (SIMPSONS_COEFFS_HALVED[jj] 
                           * (self.femPoints[jj] ** ii))
        return mat * self.dx

    def buildCSubMatrix(self, nUnknowns):
        """Return the matrix of ``c_{i,j}`` coefficients"""
        return self._subMatrixCandD(nUnknowns) * self.__sigT

    def buildDSubMatrix(self, nUnknowns):
        """Return the matrix of ``d_{i,j}`` coefficients."""
        # this is a dummy comment
        return self._subMatrixCandD(nUnknowns) * self.__invv

    def solveInner(self, indexMu, mu, muPos, timeLevel, tn, dtInv, innerIndex):
        nUnknowns = self.__unknowns[mu]
        if nUnknowns != self.femPoints.size:
            if muPos:
                unknownSlice = QUADRATIC_INDICES[1:]
                knownCol = 0
            else:
                unknownSlice = QUADRATIC_INDICES[:POLY_ORDER]
                knownCol = POLY_ORDER
        else:
            unknownSlice = QUADRATIC_INDICES
            knownCol = 'None'  
            # force a numpy indexing error
            # this *should* never be the case, as if nUnknowns == # FEM points,
            # then no values are known
        # upwind information
        if muPos:
            thisJumpIndex = 0
            upwJumpIndex = POLY_ORDER
            muAbs = mu
        else:
            thisJumpIndex = POLY_ORDER
            upwJumpIndex = 0
            muAbs = fabs(mu)
        #
        # coefficient matrices
        #
        coeffA = self.buildASubMatrix(nUnknowns) * mu
        coeffB = self.buildBSubMatrix(nUnknowns, thisJumpIndex) * muAbs
        coeffC = self.buildCSubMatrix(nUnknowns)
        coeffD = self.buildDSubMatrix(nUnknowns) * dtInv
        source = self.__source[:nUnknowns] + coeffD[:, unknownSlice].dot(
            self.coeffs[timeLevel - 1, indexMu, unknownSlice])
        #TODO:W: Maybe a way to cache the dot product as to not reevaluate it?
        
        # boundary conditions
        upwMesh = self.upwindMeshes[mu]
        if upwMesh is None:
            # apply update from boundary conditions
            bcValue = self.__getBC(indexMu, mu, muPos, tn, innerIndex, 
                                   knownCol)
            self.__inner[innerIndex + 1, indexMu, knownCol] = bcValue
            source += bcValue * (
                - coeffA[:, knownCol] - coeffB[:, knownCol]
                + coeffC[:, knownCol] + coeffD[:, knownCol]
                )
        else:
            # get information from upwind mesh
            upwBMatrix = upwMesh.buildBSubMatrix(nUnknowns, upwJumpIndex) * muAbs
            source += (upwBMatrix[:, upwJumpIndex] 
                       * upwMesh.inner(innerIndex + 1)[indexMu, upwJumpIndex])

        coeffMat = (
            coeffA[:, unknownSlice] + coeffB[:, unknownSlice] 
            + coeffC[:, unknownSlice] + coeffD[:, unknownSlice]
            )
        #
        # apply the linear solve
        #
        soln = solveLinearSystem(coeffMat, source)
        self.__inner[innerIndex + 1:, indexMu, unknownSlice] = soln
        return soln
    
    def __getBC(self, indexMu, mu, muPos, tn, innerIndex, bcIndex):
        bc = self.__bc[0 if muPos else 1]
        bcValue = 0
        prevIndex = innerIndex - 1 if innerIndex else innerIndex
        if isinstance(bc, (float, int)):
            if not bcValue:
                return 0
            if bcValue < 0:
                return self.__inner[prevIndex, -1 - indexMu, bcIndex]
            return bcValue
        return bc(tn, mu)

    def updateSource(self, iterationIndex, timeLevel):
        nFemPoints = self.femPoints.size
        source = empty(nFemPoints, dtype=float64)
        coeffs = (self.__inner[iterationIndex] if iterationIndex 
                  else self.coeffs[timeLevel])
        weights = self.manager.weights
        for ii in range(nFemPoints):
            temp = 0
            for jj, xj in enumerate(self.femPoints):
                temp += (
                    SIMPSONS_COEFFS_HALVED[jj]  # xi
                    * (xj ** ii) # eta_i8x)
                    * multiply(coeffs[:, jj], weights).sum())  # scalar flux
            source[ii] = temp
        source *= self.sourceXS * self.dx
        self.__source = source 
        return self.source  # ensures a copy

    def finishInner(self, innerIndex, timeLevel):
        scratch = self.__inner[innerIndex]
        self.__inner = empty_like(self.__inner)
        self.coeffs[timeLevel] = scratch


def solveLinearSystem(A, b):
    """
    Return the solution x for ``Ax=b``
    
    Use the cholesky decompostion as matrices 
    might very well be ill-conditioned.
    Could replace this with the analytic solutions for
    2x2 and 3x3 matrices, but this is implemented
    as to easily scale to larger/more generic 
    systems.
    """
    x = solve(A, b)
    return x

