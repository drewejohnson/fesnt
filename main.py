"""
Main driver script for FeSnT

Copyright (2018) Andrew Johnson, GTRC
TODO:   Plotting
TODO:W: Status logging
TODO:W: Default number of divisions
TODO:W: Allow a single entry to be entered as divisions and applied to all zones
TODO:W: Criticality calculation
"""

from numpy import array, empty, sum, diff, linspace
from yaml import safe_load

from quad import getQuadrature
from mesh import Mesh
from solver import Solver

INPUT_FILE = './input.yaml'
FLUX_ORDER = 'fluxOrder'
QUAD = 'quadrature'
DEFAULTS = {
    FLUX_ORDER: 2,
    QUAD: 2,
}
EPSILONS = {'innerEps': 1E-8, 'outerEps': 1E-8}
ITERATION_LIMITS = {'innerLim': 100, 'outerLim': 100}
DEFAULTS.update(EPSILONS)
DEFAULTS.update(ITERATION_LIMITS)

BOUNDARY_TYPES = {'vac': 0, 'ref': -1}
BOUNDARY_SOURCES = {}


class PulsedSource(object):
    __slots__ = ('t0', 't1', 'mag')

    def __init__(self, **kwargs):
        if 't0' not in kwargs:
            kwargs['t0'] = 0.0
        self.t0 = float(kwargs['t0']) 
        self.t1 = float(kwargs['t1'])
        self.mag = float(kwargs['mag'])
        try:
            assert self.t0 < self.t1
            assert self.mag >= 0 
        except AssertionError:
            raise TypeError("Could not properly construct pulsed source "
                            "with the following options: {}".format(kwargs))

    def __call__(self, t, mu):
        if self.t0 <= t <= self.t1:
            return self.mag
        return 0

BOUNDARY_SOURCES['pulse'] = PulsedSource 


def boundaryFactory(opts):
    if len(opts) > 1:
        raise IndexError("Don't know to process multiple source types. "
                         "Please only use one key, not {}"
                         .format(', '.join(opts.keys())))
    key, kwargs = opts.popitem()
    if key not in BOUNDARY_SOURCES:
        raise KeyError("{} not in boundary source options {}"
                       .format(key, ', '.join(BOUNDARY_SOURCES.keys())))
    return BOUNDARY_SOURCES[key](**kwargs)


class Manager(object):

    __slots__ = (
        'settings', 'filePath', 'tgrid', 'muStarts', 'solver',
        'nAngles', '__fluxGuess', 'eig', 'weights', 'angles',
        'calcType', 'universes', 'nGroups', 'meshes')

    def __init__(self, filePath):
        self.filePath = filePath
        self.settings = scrapeInput(filePath)
        self.tgrid = None
        self.nGroups = None
        self.__fluxGuess = None
        self.solver = None
        self.meshes = None 
        self.eig = None
        self.muStarts = {}

    def __repr__(self):
        return "<Manager for input file {} at {}>".format(self.filePath, 
                                                          hex(id(self)))

    @property
    def nxCells(self):
        if self.meshes is None or not any(self.meshes):
            raise AttributeError("X Cells not build yet")
        return len(self.meshes)

    @property
    def ntCells(self):
        if self.tgrid is None or not any(self.tgrid):
            raise AttributeError("T grid not build yet")
        return len(self.tgrid)

    @property
    def xbounds(self):
        if ('boundaries' in self.settings and 
                'x' in self.settings['boundaries']):
            return self.settings['boundaries']['x']
        raise AttributeError("X boundaries not set")

    def initialize(self):
        self.__allocate()
        self.__initialize()
        self.__makeMarching()
        self.solver = Solver(self)
        return self.solver

    def main(self):
        # do a lot of things
        self.initialize()
        self.solve()
        return self

    def solve(self):
        if self.solver is None:
            raise AttributeError("Solver not ready. Run initialize first")
        return self.solver.solve()

    def __allocate(self):
        self.nAngles = self.settings[QUAD]
        quadrature = getQuadrature(self.settings[QUAD])
        self.weights = quadrature[:, 1].reshape(self.nAngles, 1)
        self.angles = quadrature[:, 0].reshape(self.nAngles, 1)
        self.__makeMeshes()
        geomArgs = self.settings['geometry']
        timeArgs = self.settings['time']
        self.tgrid = buildGridVector(timeArgs['bounds'], timeArgs['divisions'])

    def __initialize(self):
        for mesh in self.meshes:
            mesh.initialize(self.ntCells)
        calcType = self.calcType = self.settings.get('calc', 'fixed')
        if calcType not in {'fixed', 'eig'}:
            raise ValueError("Calc type must be 'fixed' or 'eig', not {}"
                             .format(calcType))
        initialFlux = self.settings['initial']['flux']
        # TODO:W: Way to set initial conditions per zone
        if calcType == 'fixed':
            self.__verifySource()
            self.__initFixedSource(initialFlux)
            return 
        return self.__initEig(initialFlux)

    def __initEig(self, initialFlux):
        raise NotImplementedError

    def __initFixedSource(self, initialFlux):
        for mesh in self.meshes:
           mesh.setInitialValue(initialFlux)

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
            if isinstance(bc, dict):
                xbounds[indx] = boundaryFactory(bc)
                hasSource = True
                continue
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

    def __meshAsBoundary(self, mu, mesh):
        if mu not in self.muStarts:
            self.muStarts[mu] = set()
        self.muStarts[mu].add(mesh)
        bc = self.xbounds[0 if mu > 0 else 1]
        mesh.addBC(mu, bc)

    def __makeMarching(self):
        last = self.meshes.size - 1
        for indx, cell in enumerate(self.meshes):
            for mu in self.angles[:, 0]:
                pos = mu > 0
                if not indx:
                    if pos:
                        cell.upwindMeshes[mu] = None
                        cell.downwindMeshes[mu] = self.meshes[1]
                        self.__meshAsBoundary(mu, cell) 
                        continue
                    cell.downwindMeshes[mu] = None
                    cell.upwindMeshes[mu] = self.meshes[1]
                    continue
                if indx == last:
                    if pos:
                        cell.downwindMeshes[mu] = None
                        cell.upwindMeshes[mu] = self.meshes[-2]
                        continue
                    cell.upwindMeshes[mu] = None
                    self.__meshAsBoundary(mu, cell) 
                    cell.downwindMeshes[mu] = self.meshes[-2]
                    continue
                offset = (1 if pos else - 1) 
                cell.upwindMeshes[mu] = self.meshes[indx - offset]
                cell.downwindMeshes[mu] = self.meshes[indx + offset]


def scrapeInput(filePath):
    """Scrape the input file."""
    from scrapexs import scrape
    with open(filePath) as inp:
        options = safe_load(inp)
    universes = scrape(options['xsfile'])
    options['geometry'] = _checkGeomBlock(options.pop('geometry'), universes)
    options['time'] = _checkTimeBlock(options.pop('time'))
    options = _checkIterSettings(options, ITERATION_LIMITS, int)
    options = _checkIterSettings(options, EPSILONS, float)

    if FLUX_ORDER not in options:
        options[FLUX_ORDER] = DEFAULTS[FLUX_ORDER]
    else:
        fo = int(options.pop(FLUX_ORDER))
        if fo < 0:
            raise ValueError("What does polynomial order {} even mean?"
                             .format(fo))
        options[FLUX_ORDER] = fo
    return options

def _checkIterSettings(opts, defaults, dtype):
    for key, value in defaults.items():
        if key not in opts:
            opts[key] = value
            continue
        trial = opts[key]
        if not isinstance(trial, dtype):
            trial = dtype(trial)
        assert trial > 0
        opts[key] = trial
    return opts

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

