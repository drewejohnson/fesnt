"""
Class for storing mesh values and mesh locations
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

from numpy import isnan
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
        self.__inner[0] = self.coeffs[0]
   
    def updateSourceOuter(self, tn):
        """Create the internal source vector for each trial function."""
        scalar = self.scalarCoeffs
        nu = self.femPoints.size
        newSource = empty((nu, nu), dtype=float64)
        newSource.fill(self.sourceXS)
        for ii, jj in product(range(nu), repeat=2):
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

    def getFluxDifference(self, innerIndex):
        """Return the difference between fluxes between two iterations."""
        if not innerIndex:
            return
        return fabs((self.__inner[innerIndex] 
                    - self.__inner[innerIndex - 1]).max())

    def finishInner(self, innerIndex):
        scratch = self.__inner[innerIndex]
        self.__inner = empty_like(self.__inner)
        self.__inner[0] = scratch
        self.__scalarCoeffs.prepend((self.__inner[innerIndex] * self.manager.weights).sum(axis=0))

    def buildAMatrix(self, nUnknowns, mu):
        """Build the matrix of ``a_{i,j}`` coefficients"""
        mat = empty((nUnknowns, self.femPoints.size))
        front = self.dx * mu
        alphas = self.polyWeights
        for ii, jj in product(range(nUnknowns), range(self.femPoints.size)):
            temp = 0
            for ll in range(1, POLY_ORDER + 1):
                temp += (
                    ll * alphas[jj, ll] *
                    (self.femPoints[jj] ** (ll - 1 + ii)) 
                    * SIMPSONS_COEFFS_HALVED[jj] )
            mat[ii, jj] = front * temp
        return mat

    def buildCMatrix(self, nUnknowns):
        """Return the matrix of ``c_{i,j}`` coefficients"""
        mat = empty((nUnknowns, self.femPoints.size))
        for ii, jj in product(range(nUnknowns), range(self.femPoints.size)):
            mat[ii, jj] = (
                    self.dx * SIMPSONS_COEFFS_HALVED[jj] 
                    * (self.femPoints[jj] ** ii))
        return mat

    def getJumpTerms(self, nUnknowns, mu, indexMu, muPos, innerIndex):
        """Return the jump vectors for this and the upwind mesh."""
        thisPntIndex = 0 if muPos else POLY_ORDER
        thisX = self.femPoints[thisPntIndex]
        thisValue = self.__inner[innerIndex, indexMu, thisPntIndex]
        thisVec = empty(nUnknowns)
        upwMesh = self.upwindMeshes[mu]
        if upwMesh is not None:
            upwPntIndex = POLY_ORDER if muPos else 0
            upwX = upwMesh.femPoints[upwPntIndex]
            upwValue = upwMesh.inner(innerIndex)[indexMu, upwPntIndex]
            upwVec = empty(nUnknowns)
        else:
            upwVec = None
        absMu = mu if muPos else fabs(mu)
        for ii in range(nUnknowns):
            thisVec[ii] = thisValue * (thisX ** ii)
            if upwVec is not None:
                upwVec[ii] = upwValue * (upwX ** ii)
        return (thisVec * absMu, upwVec * absMu if upwVec is not None 
                                  else zeros(nUnknowns))

    def solveInner(self, indexMu, mu, muPos, timeLevel, tn, dtInv, innerIndex):
        nUnknowns = self.__unknowns[mu]
        aCoeffs = self.buildAMatrix(nUnknowns, mu)
        cCoeffs = self.buildCMatrix(nUnknowns)
        thisJump, upwJump = self.getJumpTerms(nUnknowns, mu, indexMu,
                                              muPos, innerIndex)
        thisJumpCol = 0 if muPos else -1
        coeffMat = empty((nUnknowns, nUnknowns))
        if self.upwindMeshes[mu] is None:
            knownIndex = 0 if muPos else POLY_ORDER
            unknownSlice = arange(0, POLY_ORDER)
            if muPos:
                unknownSlice += 1
            bcIndex = 0 if muPos else POLY_ORDER
            bcValue = self.__getBC(indexMu, mu, muPos, tn, innerIndex, 
                                   bcIndex)
            self.__inner[innerIndex + 1, indexMu, bcIndex] = bcValue
        else:
            knownIndex = None
            unknownSlice = arange(POLY_ORDER + 1)
        coeffMat[:, :] = aCoeffs[:, unknownSlice]
        coeffMat += (self.__sigT + dtInv) * cCoeffs[:, unknownSlice]
        coeffMat[:, thisJumpCol] += thisJump
        prevTimeVals = self.coeffs[timeLevel - 1, indexMu]
        source = self.source[unknownSlice]
        source += cCoeffs[:, unknownSlice].dot(prevTimeVals[unknownSlice])
        if knownIndex is not None:
            source -= (
                aCoeffs[:, knownIndex]
                + self.__sigT * cCoeffs[:, knownIndex]) * bcValue

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

