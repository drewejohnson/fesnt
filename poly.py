"""
Polynomial methods

TODO: Watch polynomial weights in cells - some can be 0(1E3)
TODO:W: Cythonize

"""
from itertools import product
from numpy import empty, float64, array, ndarray
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
    if not isinstance(points, ndarray):
        points = array(points, dtype=float64)
    vanMat = empty((nPnts, nPnts), dtype=float64)
    for ii, jj in product(range(nPnts), range(nPnts)):
        vanMat[ii, jj] = points[ii, 0] ** jj
    vanMatInv = inv(vanMat)
    coeffs = empty((nPnts, nPnts))

    for jj in range(nPnts):
        kDelta = [points[m][1] if m == jj else 0 for m in range(nPnts)]
        coeffs[jj, :] = vanMatInv.dot(kDelta)

    return coeffs

if __name__ == '__main__':
    # test against wikipedia example for lagrange points
    # https://en.wikipedia.org/wiki/Lagrange_polynomial
    from numpy import linspace, array
    from matplotlib import pyplot
    points = array((
        (-9, 5), (-4, 2), (-1, -2), (7, 9)))
    coeffs = buildLagrangeCoeffs(points)
    evalPoints = linspace(points.min(0)[0], points.max(0)[0])
    full = None
    for ii in range(coeffs.shape[0]):
        this = polyval(evalPoints, coeffs[ii])
        if ii:
            full += this
        else:
            full = this
        pyplot.plot(evalPoints, this, label=ii)
    pyplot.plot(evalPoints, full, label='full')
    pyplot.legend()
    pyplot.show()
