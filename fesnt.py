"""
Main driver script for FeSnT
Copyright (C) Andrew Johnson, GTRC

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.

TODO:W: Status logging
TODO:W: Default number of divisions
TODO:W: Allow a single entry to be entered as divisions and applied to all zones
TODO:W: Criticality calculation
"""
from os import mkdir
from os.path import splitext, split, exists, isdir, join

from numpy import array, empty, sum, diff, linspace, empty_like, sin
from yaml import safe_load
from matplotlib import pyplot

from quad import getQuadrature
from poly import polyval
from mesh import Mesh
from solver import Solver
from analytic import gamma1

QUAD = 'quadrature'
DEFAULTS = {
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


class DemoSource(object):

    def __call__(self, t, mu):
        return gamma1(mu, t)


BOUNDARY_SOURCES.update({
    'pulse': PulsedSource,
    'muSinT': DemoSource,
    })


def boundaryFactory(opts):
    if not isinstance(opts, (str, dict)):
        raise TypeError("Unsupported type {}".format(type(opts)))
    if isinstance(opts, str):
        if opts in BOUNDARY_SOURCES:
            return BOUNDARY_SOURCES[opts]()
        if opts[:3] in BOUNDARY_TYPES:
            return BOUNDARY_TYPES[opts[:3]]
        raise KeyError("Unknown string key {}".format(opts))
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
        'settings', 'filePath', 'tgrid', 'solver',
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
        self.weights = quadrature[:, 1]
        self.angles = quadrature[:, 0]
        self.__makeMeshes()
        geomArgs = self.settings['geometry']
        timeArgs = self.settings['time']
        self.tgrid = buildGridVector(timeArgs['bounds'], timeArgs['divisions'])

    def __initialize(self):
        innerLim = self.settings['innerLim']
        for mesh in self.meshes:
            mesh.initialize(self.ntCells, innerLim)
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
            if isinstance(bc, (str, dict)):
                xbounds[indx] = boundaryFactory(bc)
                hasSource = True
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
        geom = self.settings['geometry']
        nxCells = sum(geom['divisions'])
        cells = empty(nxCells, dtype=object)
        cellIndx = 0
        zipped = zip(geom['bounds'], geom['divisions'], geom['universes'])
        for indx, (bnd, div, xsMat) in enumerate(zipped):
            lower = geom['bounds'][indx - 1] if indx else 0
            corners = linspace(lower, bnd, div + 1)
            for count in range(div):
                mesh = Mesh(self, corners[count:count + 2], xsMat)
                cells[cellIndx] = mesh
                cellIndx += 1
        self.meshes = cells

    def __meshAsBoundary(self, mu, mesh, pos):
        bc = self.xbounds[0 if pos else 1]
        mesh.addBC(mu, bc)

    def __makeMarching(self):
        last = self.meshes.size - 1
        for indx, cell in enumerate(self.meshes):
            for mu in self.angles:
                pos = mu > 0
                if not indx:
                    if pos:
                        cell.upwindMeshes[mu] = None
                        self.__meshAsBoundary(mu, cell, pos) 
                        continue
                if indx == last:
                    if not pos:
                        cell.upwindMeshes[mu] = None
                        self.__meshAsBoundary(mu, cell, pos) 
                        continue
                offset = (1 if pos else - 1) 
                cell.upwindMeshes[mu] = self.meshes[indx - offset]

    def getAngular(self, timeLevel, pointsPerMesh=10):
        nPoints = pointsPerMesh * len(self.meshes)
        xgrid = empty(nPoints)
        ydata = empty((self.angles.size, nPoints))
        for mIndx, mesh in enumerate(self.meshes):
            start = mIndx * pointsPerMesh
            end = start + pointsPerMesh
            xPoints =  linspace(mesh.corners[0], mesh.corners[1], 
                                pointsPerMesh)
            xgrid[start:end] = xPoints
            coeffs = mesh.coeffs[timeLevel]
            for indexMu, mu in enumerate(self.angles):
                ydata[indexMu, start:end] = polyval(xPoints, coeffs[indexMu])
        return xgrid, ydata

    def plotAngular(self, timeLevel, ax=None, pointsPerMesh=10):
        x, y = self.getAngular(timeLevel, pointsPerMesh)
        ax = ax or pyplot.axes()
        label = r'$\mu_{indx}={val:5.3f}$'
        for muIndex, yData in enumerate(y):
            ax.plot(x, yData, label=label.format(
                indx=muIndex, val=self.angles[muIndex]))
        ax.legend()
        ax.set_title("T = {:7.5f}".format(self.tgrid[timeLevel]))
        return ax

    def angularGif(self, prefix='', pointsPerMesh=5):
        if not prefix:
            baseDir, basename = split(self.filePath)
            caseTitle = splitext(basename)[0]
            targetDir = join(baseDir, caseTitle)
            if exists(targetDir) and not isdir(targetDir):
                raise IOError("Output directory {} exists and is not directory"
                              .format(targetDir))
            if not exists(targetDir):
                mkdir(targetDir)
            print("INFO: Saving images to {}".format(targetDir))
            prefix = join(targetDir, caseTitle)
        return giffify(self, prefix, pointsPerMesh)

    def getFullMatrix(self, pointsPerMesh=5):
        """Return the full space-time dependent flux [time, mu, pos]."""
        numXPoints = len(self.meshes) * pointsPerMesh
        output = empty((self.tgrid.size, self.angles.size, numXPoints))
        xvec = None
        for step in range(self.tgrid.size):
            outs = self.getAngular(step, pointsPerMesh)
            output[step] = outs[1]
            if xvec is None:
                xvec = outs[0]
        return output, xvec


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
    diffU = set(requestedU).difference(uInRes)
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


def giffify(manager, prefix='', pointsPerMesh=5):
    """
    Save a series of figures of the angular fluxes.

    Can be used to create a gif with::

        $ convert -delay 15 -loop 0 *.png output.fig

    """
    from matplotlib.pyplot import subplots, suptitle
    fmt = prefix + "step{}"
    fig, ax = subplots(1,1)
    nSteps = manager.tgrid.size
    updateAt = nSteps // 10
    fullMatrix, xGrid = manager.getFullMatrix(pointsPerMesh) 
    angles = manager.angles
    lower, upper = (fullMatrix.min(), fullMatrix.max())
    diff = upper - lower
    lower -= diff / 10
    upper += diff / 10
    lenZfill = len(str(nSteps))
    for step in range(1, nSteps):
        if step % updateAt == 0:
            print("{} of {}".format(step, nSteps - 1))
        for muIndx, mu in enumerate(angles):
            ax.plot(xGrid, fullMatrix[step, muIndx], 
                    label=r'$\mu={:7.5f}$'.format(mu))
        ax.legend(bbox_to_anchor=(0, 1.02, 1, 0.102), loc=3, ncol=2, 
                                  mode='expand', 
                                  borderaxespad=0.)
        suptitle('t={:7.5f}'.format(manager.tgrid[step]))
        ax.set_xlabel('X [cm]')
        ax.set_ylabel(r'$\psi(x,\mu,t)$')
        ax.set_ylim(lower, upper)
        fig.savefig(fmt.format(str(step).zfill(lenZfill)), bbox_inches='tight')
        ax.clear()


if __name__ == "__main__":
    import sys, pickle
    from os.path import exists, basename
    args = sys.argv
    if len(args) < 2:
        raise IndexError("Missing file path argument")
    INPUT_FILE = args[1]
    if not exists(INPUT_FILE):
        raise OSError("File path {} does not exist".format(INPUT_FILE))
    manager = Manager(INPUT_FILE)
    manager.initialize()
    print("INFO: Here we go - input file: {}".format(INPUT_FILE))
    manager.solve()
    pickleOut = '{}-{}.pickle'.format(INPUT_FILE, hex(id(manager))[2:])
    print("INFO: Pickling manager to {}".format(pickleOut))
    with open(pickleOut, 'wb') as out:
        pickle.dump(manager, out)
