"""
Class that solves things
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
        if self.tgrid is None or not any(self.tgrid):
            return
        print("INFO: Starting solution routine")
        nSteps = self.tgrid.size
        updateAt = nSteps // 10
        for timeLevel  in range(1, nSteps):
            tn = self.tgrid[timeLevel]
            if timeLevel % updateAt == 0:
                print("INFO: Solving for time level {} of {}"
                      .format(timeLevel, nSteps - 1))
            dt = self.tgrid[timeLevel] - self.tgrid[timeLevel - 1]
            fluxIndex = self.__fluxIteration(timeLevel, tn, 1 / dt)
            for mesh in self.meshes:
                mesh.finishInner(fluxIndex + 1, timeLevel)

    def __fluxIteration(self, timeLevel, tn, dtInv):
        innerEps = self.innerEps
        innerLim = self.innerLim
        for innerIndex in range(innerLim - 1):
            maxFluxError = None 
            self.__updateMeshSource(innerIndex)
            for indexMu, mu in enumerate(self.angles):
                muPos = mu > 0
                meshes = self.meshes if muPos else self.meshes[::-1]
                for mesh in meshes:
                    mesh.solveInner(indexMu, mu, muPos, timeLevel, tn, dtInv, innerIndex)

            for mesh in self.meshes:
                fluxError = mesh.getFluxDifference(innerIndex)
                if fluxError is None:
                    continue
                if fluxError == -1:
                    raise ValueError("NAN detected for mesh {} - iteration {}"
                                     .format(mesh, innerIndex))
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

    def __updateMeshSource(self, innerIndex):
        for mesh in self.meshes:
            mesh.updateSource(innerIndex)
