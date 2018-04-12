"""
Class that solves things
"""
from itertools import product
from numpy import empty

class Solver(object):

    __slots__ = ('meshes', 'quad', 'starts', 'tgrid', 'nGroups', 'innerLim',
                 'innerEps', 'outerEps', 'outerLim', 'nAngles')

    def __init__(self, manager):
        self.meshes = manager.meshes
        self.starts = manager.muStarts
        self.tgrid = manager.tgrid
        self.nAngles = manager.nAngles
        self.nGroups = manager.nGroups
        self.innerLim = manager.settings['innerLim']
        self.outerLim = manager.settings['outerLim']
        self.innerEps = manager.settings['innerEps']
        self.outerEps = manager.settings['outerEps']

    @property
    def iterCriteria(self):
        """Return the iteration criteria."""
        keys = {pref + suf for pref, suf in product(('inner', 'outer'),
                                                    ('Lim', 'Eps'))}
        return {key: getattr(self, key) for key in keys}

    def solve(self):
        """Here we go."""
        nSteps = self.tgrid.size
        for timeLevel, tn in enumerate(self.tgrid):
            print("INFO: Solving for time {}. Level {} of {}"
                  .format(tn, timeLevel, nSteps))
            self.__outerIteration(timeLevel, tn)

    def __outerIteration(self, timeLevel, tn):
        """Outer iteration at the given time level"""
        outerEps = self.outerEps
        innerEps = self.innerEps
        innerLim = self.innerLim
        outerLim = self.outerLim
        for outerI in range(self.outerLim):
            maxSourceError = 0
            print("DEBG: Outer iteration {} of {}".format(outerI, outerLim))
            for mesh in self.meshes:
               mesh.updateSourceOuter()

            #
            # inner iterations
            #
            maxFluxError = 0
            for innerI in range(innerLim):
                for indexM in range(self.nAngles):
                    for mesh in self.meshes:
                        mesh.solve(indexM, timeLevel, tn)

                for mesh in self.meshes():
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

