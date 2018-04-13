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
        self.angles = manager.angles[:, 0]
        self.nGroups = manager.nGroups
        self.innerLim = manager.settings['innerLim']
        self.outerLim = manager.settings['outerLim']
        self.innerEps = manager.settings['innerEps']
        self.outerEps = manager.settings['outerEps']

    def solve(self):
        """Here we go."""
        nSteps = self.tgrid.size
        for timeLevel  in range(1, nSteps):
            tn= self.tgrid[timeLevel]
            print("INFO: Solving for time level {} of {}"
                  .format(timeLevel, nSteps))
            dt = None if not timeLevel else (self.tgrid[timeLevel] 
                                             - self.tgrid[timeLevel - 1])
            self.__outerIteration(timeLevel, tn, dt)

    def __outerIteration(self, timeLevel, tn, dt):
        """Outer iteration at the given time level"""
        outerEps = self.outerEps
        outerLim = self.outerLim
        for outerIndex in range(self.outerLim):
            maxSourceError = 0
            print("DEBG: Outer iteration {} of {}".format(outerIndex, outerLim))
            for mesh in self.meshes:
               mesh.updateSourceOuter(tn)
            
            innerIndex = self.__innerIteration(timeLevel, tn, dt)

            for mesh in self.meshes:
                mesh.finishInner(innerIndex)
                sourceError = mesh.sourceDifference()
                if sourceError is None:
                    continue
                maxSourceError = max(sourceError, maxSourceError)
            if maxSourceError <= outerEps:
                print("DEBG: Outer iteraiton converged after {} iterations. "
                      "Max source error: {:7.5E}".format(outerIndex, maxSourceError))
                break
        else:
            print("WARN: Outer iteration did not converge "
                    "after {} iterations. Max source difference: {:7.5E}"
                  .format(outerLim, maxSourceError))
        for mesh in self.meshes:
            mesh.coeffs[timeLevel] = mesh.inner(innerIndex)

    def __innerIteration(self, timeLevel, tn, dt):
        innerEps = self.innerEps
        innerLim = self.innerLim
        maxFluxError = 0
        for innerIndex in range(innerLim):
            for indexMu, mu in enumerate(self.angles):
                muPos = mu > 0
                meshes = self.meshes if muPos else self.meshes[::-1]
                for mesh in meshes:
                    mesh.solveInner(indexMu, mu, muPos, timeLevel, dt, innerIndex)

            for mesh in self.meshes:
                fluxError = mesh.getFluxDifference(innerIndex)
                if fluxError is None:
                    continue
                maxFluxError = max(maxFluxError, fluxError)
            if maxFluxError <= innerEps:
                print("DEBG: Inner iteraiton converged after {} iterations. "
                      "Max flux error: {:7.5E}".format(innerIndex, maxFluxError))
                break
        else:
            print("WARN: Inner iterations did not converge after "
                    "{} iterations. Max flux difference: {:7.5E}"
                  .format(innerLim, maxFluxError))
        return innerIndex
