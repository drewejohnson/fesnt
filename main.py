"""
Main driver script for FeSnT

Copyright (2018) Andrew Johnson, GTC
"""

from numpy import array, empty, sum, diff, linspace
from yaml import safe_load

INPUT_FILE = './input.yaml'
FLUX_ORDER = 'fluxOrder'
DEFAULTS = {
    FLUX_ORDER: 2  # second order polynomial
}


class Manager(object):

    def __init__(self, filePath):
        self.filePath = filePath
        self.settings = scrapeInput(filePath)
        self.__allocate()

    def __repr__(self):
        return "<Manager for input file {} at {}>".format(self.filePath, 
                                                          hex(id(self)))

    def main(self):
        # do a lot of things

        return self

    def __allocate(self):
        geomArgs = self.settings['geometry']
        timeArgs = self.settings['time']
        self.xgrid = buildGridVector(geomArgs['bounds'], geomArgs['divisions'])
        self.nxCells = self.xgrid.size
        self.tgrid = buildGridVector(timeArgs['bounds'], timeArgs['divisions'])
        self.ntCells = self.tgrid.size
        self.pointsPerCell = self.settings[FLUX_ORDER] + 1
        self.fluxCoeff = empty((self.ntCells, self.pointsPerCell * self.nxCells))

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

