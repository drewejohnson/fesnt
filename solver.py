"""
Class that solves things
"""
from itertools import product
from numpy import empty

class Solver(object):

    __slots__ = ('meshes', 'quad', 'starts', 'tgrid', 'nGroups', 'innerLim',
                 'innerEps', 'outerEps', 'outerLim', 'angles', '__isEig')

    def __init__(self, manager):
        self.meshes = manager.meshes
        self.tgrid = manager.tgrid
        self.angles = manager.angles[:, 0]
        self.nGroups = manager.nGroups
        self.innerLim = manager.settings['innerLim']
        self.outerLim = manager.settings['outerLim']
        self.innerEps = manager.settings['innerEps']
        self.outerEps = manager.settings['outerEps']
        self.__isEig = manager.calcType == 'eig'

    def solve(self):
        """Here we go."""
        if self.__isEig:
            self.__outerIteration(0, 0, None)
        if self.tgrid is None or not any(self.tgrid):
            return
        nSteps = self.tgrid.size
        for timeLevel  in range(1, nSteps):
            tn= self.tgrid[timeLevel]
            print("INFO: Solving for time level {} of {}"
                  .format(timeLevel, nSteps))
            dt = self.tgrid[timeLevel] - self.tgrid[timeLevel - 1]
            self.__outerIteration(timeLevel, tn, dt)

    def __outerIteration(self, timeLevel, tn, dt):
        """Outer iteration at the given time level"""
        outerEps = self.outerEps
        outerLim = self.outerLim
        updateAt = outerLim // 10
        prevSourceError = None
        maxSourceError = None
        for outerIndex in range(self.outerLim):
            prevSourceError = maxSourceError
            maxSourceError = None 
            if outerIndex % updateAt == 0:
                msg ="INFO: Outer iteration {} of {}".format(outerIndex, outerLim)
                if prevSourceError is not None:
                    msg += ". Source Error: {:7.5E}".format(prevSourceError)
                print(msg)
            for mesh in self.meshes:
               mesh.updateSourceOuter(tn)
            
            innerIndex = self.__innerIteration(timeLevel, tn, dt)

            for mesh in self.meshes:
                mesh.finishInner(innerIndex)
                sourceError = mesh.sourceDifference()
                if sourceError is None:
                    continue
                if maxSourceError is None:
                    maxSourceError = sourceError
                    continue
                maxSourceError = max(sourceError, maxSourceError)
            if maxSourceError is not None and maxSourceError <= outerEps:
                print("DEBG: Outer iteration converged after {} iterations. "
                      "Max source error: {:7.5E}".format(outerIndex + 1, maxSourceError))
                break
        else:
            print("WARN: Outer iteration did not converge "
                    "after {} iterations. Max source difference: {:7.5E}"
                  .format(outerLim, maxSourceError))
        for mesh in self.meshes:
            mesh.coeffs[timeLevel] = mesh.inner(innerIndex)
        input("Press enter to continue: ")

    def __innerIteration(self, timeLevel, tn, dt):
        innerEps = self.innerEps
        innerLim = self.innerLim
        maxFluxError = None 
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
                if maxFluxError is None:
                    maxFluxError = fluxError
                    continue
                maxFluxError = max(maxFluxError, fluxError)
            if maxFluxError is not None and maxFluxError <= innerEps:
                # print("DEBG: Inner iteration converged after {} iterations. "
                #       "Max flux error: {:7.5E}".format(innerIndex + 1, maxFluxError))
                break
        else:
            print("WARN: Inner iterations did not converge after "
                    "{} iterations. Max flux difference: {:7.5E}"
                  .format(innerLim, maxFluxError))
        return innerIndex
