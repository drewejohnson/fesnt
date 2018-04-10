"""
Polynomial methods

TODO: Watch polynomial weights in cells - some can be 0(1E3)
TODO:W: Cythonize

"""
from numpy import array, empty, zeros
from numpy.linalg import inv
from numpy.polynomial.polynomial import polyval

def buildLagrangeCoeffs(points):
    """
    Return a matrix of Lagrange polynomial weights.

    Parameters
    ----------
    points: list
        nested vector of (x, y) points

    Returns
    -------
    numpy.array
        Collection of weights ``a[j, m]``

    TODO:W: Use alternative scheme, e.g. Barycentric
    TODO:W: https://epubs.siam.org/doi/pdf/10.1137/S0036144502417715
    TODO:W: Current implementation could be unstable for large matrices
    TODO:W: Really any other implementation would suffice ¯\_(ツ)_/¯
    """
    nPnts = len(points)
    vanMat = array([[p[0] ** xx for xx in range(nPnts)] for p in points])
    vanMatInv = inv(vanMat)

    coeffs = empty((nPnts, nPnts))

    for jj in range(nPnts):
        kDelta = [points[m][1] if m == jj else 0 for m in range(nPnts)]
        coeffs[jj, :] = vanMatInv.dot(kDelta)

    return coeffs


