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
