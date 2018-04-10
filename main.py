"""
Main driver script for FeSnT

Copyright (2018) Andrew Johnson, GTC
"""

from numpy import array, empty, sum, diff, linspace
from yaml import safe_load

from quad import getQuadrature
from mesh import Mesh

INPUT_FILE = './input.yaml'
FLUX_ORDER = 'fluxOrder'
QUAD = 'quadrature'
DEFAULTS = {
    FLUX_ORDER: 2,
    QUAD: 2
}
BOUNDARY_TYPES = {'vac': 0, 'ref': -1}

class Manager(object):

    __slots__ = (
        'settings', 'filePath', 'xgrid', 'tgrid', 'nxCells', 'ntCells', 
        'nAngles', 'fluxCoeff', '__fluxGuess', 'eig', 'quadrature',
        'calcType', 'universes', 'nGroups', 'meshes')

    def __init__(self, filePath):
        self.filePath = filePath
        self.settings = scrapeInput(filePath)
        self.xgrid = None
        self.tgrid = None
        self.nxCells = None
        self.ntCells = None
        self.nAngles = None
        self.nGroups = None
        self.fluxCoeff = None
        self.__fluxGuess = None
        self.meshes = set()
        self.eig = None

    def __repr__(self):
        return "<Manager for input file {} at {}>".format(self.filePath, 
                                                          hex(id(self)))

    def main(self):
        # do a lot of things
        self.__allocate()
        self.__initialize()
        self.__makeMeshes()
        self.__makeMarching()
        return self

    def __allocate(self):
        self.quadrature = getQuadrature(self.settings[QUAD])
        geomArgs = self.settings['geometry']
        timeArgs = self.settings['time']
        self.xgrid = buildGridVector(geomArgs['bounds'], geomArgs['divisions'])
        self.nxCells = self.xgrid.size
        self.tgrid = buildGridVector(timeArgs['bounds'], timeArgs['divisions'])
        self.ntCells = self.tgrid.size
        self.nAngles = self.quadrature.shape[0]
        pointsPerCell = self.settings[FLUX_ORDER] + 1
        self.fluxCoeff = empty((self.ntCells, self.nAngles, 
                                pointsPerCell * self.nxCells))


    def __initialize(self):
        calcType = self.calcType = self.settings.get('calc', 'fixed')
        if calcType not in {'fixed', 'eig'}:
            raise ValueError("Calc type must be 'fixed' or 'eig', not {}"
                             .format(calcType))
        if calcType == 'fixed':
            return self.__initFixedSource()
        return self.__initEig()

    def __initEig(self):
        raise NotImplementedError

    def __initFixedSource(self):
        self.fluxCoeff[0, :, :] = self.settings['initial']['flux']
        self.__verifySource()

    def __verifySource(self):
        hasSource = False
        internalSource = self.settings.get('source', None)
        if internalSource is not None:
            internalSource = float(internalSource)
            assert internalSource >= 0
            if not internalSource: 
                internalSource = None
            hasSource = internalSource is not None
        self.settings['source'] = internalSource
        xbounds = self.settings['boundaries'].pop('x')
        for indx in range(len(xbounds)):
            bc = xbounds[indx]
            if bc[:3] in BOUNDARY_TYPES:
                xbounds[indx] = BOUNDARY_TYPES[bc[:3]]
                continue
            bc = float(bc)
            if bc < 0:  # vacuum
                xbounds[indx] = BOUNDARY_TYPES['vac']
                continue
            xbounds[indx] = bc
            hasSource |= bc > 0
        if not hasSource:
            raise ValueError("No internal nor external source")
        self.settings['boundaries']['x'] = xbounds

    def __makeMeshes(self):
        order = self.settings[FLUX_ORDER]
        geom = self.settings['geometry']
        nxCells = sum(geom['divisions'])
        cells = empty(nxCells, dtype=object)
        cellIndx = 0
        zipped = zip(geom['bounds'], geom['divisions'], geom['universes'])
        for indx, (bnd, div, xsMat) in enumerate(zipped):
            lower = geom['bounds'][indx - 1] if indx else 0
            corners = linspace(lower, bnd, div + 1)
            for count in range(div):
                mesh = Mesh(self, corners[count:count + 2], xsMat, 
                            order)
                cells[cellIndx] = mesh
                cellIndx += 1
        self.meshes = cells

    def __makeMarching(self):
        pass


def scrapeInput(filePath):
    """Scrape the input file."""
    from scrapexs import scrape
    with open(filePath) as inp:
        options = safe_load(inp)
    universes = scrape(options['xsfile'])
    options['geometry'] = _checkGeomBlock(options.pop('geometry'), universes)
    options['time'] = _checkTimeBlock(options.pop('time'))
    if FLUX_ORDER not in options:
        options[FLUX_ORDER] = DEFAULTS[FLUX_ORDER]
    else:
        fo = int(options.pop(FLUX_ORDER))
        if fo < 0:
            raise ValueError("What does polynomial order {} even mean?"
                             .format(fo))
        options[FLUX_ORDER] = fo
    return options

def _checkGeomBlock(opts, uFromRes):
    assert len(opts['universes']) == len(opts['bounds']) == len(opts['divisions'])
    uInRes = set(uFromRes.keys())
    requestedU = opts.pop('universes')
    diffU = uInRes.symmetric_difference(set(requestedU))
    if diffU:
        raise KeyError(diffU)
    opts = _validateBounds(opts)
    opts['divisions'] = array(opts.pop('divisions'), dtype=int)
    opts['universes'] = [uFromRes[key] for key in requestedU]
    return opts

def _validateBounds(opts):
    bounds = array(opts.pop('bounds'), dtype=float)
    _assertVecAscends(bounds)
    opts['bounds'] = bounds
    return opts

def _assertVecAscends(vector):
    assert all(diff(vector) > 0), "Non-increasing vector {}".format(vector)

def _checkTimeBlock(opts):
    opts = _validateBounds(opts)
    opts['divisions'] = array(opts['divisions'], dtype=int)
    return opts

def buildGridVector(bounds, divisions, start=0):
    assert bounds.size == divisions.size
    nPoints = sum(divisions)
    grid = empty(nPoints + 1)
    prevIndx = 0
    for ii, (bound, div) in enumerate(zip(bounds, divisions)):
        startAt = bounds[ii -1] if ii > 0 else start
        subSlice = slice(0 if ii == 0 else 1, None)
        points = linspace(startAt, bound, div + 1)[subSlice]
        grid[prevIndx:prevIndx + len(points)] = points
        prevIndx += div + (0 if ii else 1)
    return grid
if __name__ == "__main__":
    manager = Manager(INPUT_FILE).main()

