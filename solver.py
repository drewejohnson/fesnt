"""
Class that solves things
"""
from itertools import product
from numpy import empty

class Solver(object):

    __slots__ = ('meshes', 'quad', 'starts', 'tgrid', 'nGroups', 'innerLim',
                 'innerEps', 'outerEps', 'outerLim', 'angles')

    def __init__(self, manager):
        self.meshes = manager.meshes
        self.tgrid = manager.tgrid
        self.angles = manager.angles
        self.nGroups = manager.nGroups
        self.innerLim = manager.settings['innerLim']
        self.outerLim = manager.settings['outerLim']
        self.innerEps = manager.settings['innerEps']
        self.outerEps = manager.settings['outerEps']

    def solve(self):
        """Here we go."""
        nSteps = self.tgrid.size
        for timeLevel, tn in enumerate(self.tgrid):
            print("INFO: Solving for time {}. Level {} of {}"
                  .format(tn, timeLevel, nSteps))
            dt = None if not tn else (self.tgrid[tn] - self.tgrid[tn - 1])
            self.__outerIteration(timeLevel, tn, dt)

    def __outerIteration(self, timeLevel, tn, dt):
        """Outer iteration at the given time level"""
        outerEps = self.outerEps
        innerEps = self.innerEps
        innerLim = self.innerLim
        outerLim = self.outerLim
        dt = self.tgrid[tn] - self.tgrid[tn - 1]
        for outerI in range(self.outerLim):
            maxSourceError = 0
            print("DEBG: Outer iteration {} of {}".format(outerI, outerLim))
            for mesh in self.meshes:
               mesh.updateSourceOuter(tn)

            #
            # inner iterations
            #
            maxFluxError = 0
            for innerI in range(innerLim):
                for indexM, mu in enumerate(self.angles):
                    muPos = mu > 0
                    meshes = self.meshes if muPos else self.meshes[::-1]
                    for mesh in meshes:
                        mesh.solve(indexM, mu, muPos, timeLevel, tn, dt)

                for mesh in self.meshes:
                    fluxError = mesh.getFluxDifference()
                    if fluxError is None:
                        continue
                    maxFluxError = max(maxFluxError, fluxError)
                if maxFluxError <= innerEps:
                    break
            else:
                print("WARN: Inner iterations did not converge after "
                      "{} iterations. Max flux difference: {}"
                      .format(innerLim, maxFluxError))

           
            for mesh in self.meshes():
                sourceError= mesh.sourceDifference()
                if sourceError is None:
                    continue
                maxSourceError = max(sourceError, maxSourceError)
            if maxSourceError <= outerEps:
                break
        else:
            print("WARN: Outer iteration did not converge "
                  "after {} iterations. Max source difference: {}"
                  .format(outerLim, maxSourceError))

