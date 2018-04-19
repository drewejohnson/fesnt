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
        self.angles = manager.angles
        self.nGroups = manager.nGroups
        self.innerLim = manager.settings['innerLim']
        self.outerLim = manager.settings['outerLim']
        self.innerEps = manager.settings['innerEps']
        self.outerEps = manager.settings['outerEps']
        self.__isEig = manager.calcType == 'eig'

    def solve(self):
        """Here we go."""
        if self.__isEig:
            self.__outerIteration(0, 0, 0)
        if self.tgrid is None or not any(self.tgrid):
            return
        nSteps = self.tgrid.size
        for timeLevel  in range(1, nSteps):
            tn= self.tgrid[timeLevel]
            print("INFO: Solving for time level {} of {}"
                  .format(timeLevel, nSteps))
            dt = self.tgrid[timeLevel] - self.tgrid[timeLevel - 1]
            fluxIndex = self.__fluxIteration(timeLevel, tn, 1 / dt)
            for mesh in self.meshes:
                mesh.finishInner(fluxIndex + 1, timeLevel)
            q = input("Press <q> to quit: ")
            if q[0].lower() == 'q':
                return 

    def __fluxIteration(self, timeLevel, tn, dtInv):
        innerEps = self.innerEps
        innerLim = self.innerLim
        self.__updateMeshSource(0, timeLevel)
        for innerIndex in range(innerLim - 1):
            maxFluxError = None 
            for indexMu, mu in enumerate(self.angles):
                muPos = mu > 0
                meshes = self.meshes if muPos else self.meshes[::-1]
                for mesh in meshes:
                    mesh.solveInner(indexMu, mu, muPos, timeLevel, tn, dtInv, innerIndex)

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
            self.__updateMeshSource(innerIndex + 1, None)
        else:
            print("WARN: Inner iterations did not converge after "
                    "{} iterations. Max flux difference: {:7.5E}"
                  .format(innerLim, maxFluxError))
        return innerIndex

    def __updateMeshSource(self, innerIndex, timeLevel):
        for mesh in self.meshes:
            mesh.updateSource(innerIndex, timeLevel)
