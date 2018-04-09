"""
Main driver script for FeSnT

Copyright (2018) Andrew Johnson, GTC
"""

from numpy import array
from yaml import safe_load

INPUT_FILE = './input.yaml'

class Manager(dict):

    def __init__(self, filePath):
        self.filePath = filePath
        dict.__init__(self, scrapeInput(filePath))
        self.fluxMoments = None

    def __getattr__(self, key):
        if key in self.__dict__:
            return self.__dict__[key]
        if dict.__contains__(self, key):
            return dict.__getitem__(self, key)
        raise AttributeError("No key nor attribute {} on Manager".format(key))

    def __repr__(self):
        return "<Manager for input file {} at {}>".format(self.filePath, 
                                                          hex(id(self)))

    def main(self):
        # do a lot of things

        return self

def scrapeInput(filePath):
    """Scrape the input file."""
    from scrapexs import scrape
    with open(filePath) as inp:
        options = safe_load(inp)
    universes = scrape(options['xsfile'])
    options['geometry'] = _checkGeomBlock(options.pop('geometry'), universes)
    
    return options

def _checkGeomBlock(opts, uFromRes):
    assert len(opts['universes']) == len(opts['bounds']) == len(opts['divisions'])
    uInRes = set(uFromRes.keys())
    requestedU = opts.pop('universes')
    diffU = uInRes.symmetric_difference(set(requestedU))
    if diffU:
        raise KeyError(diffU)
    opts['bounds'] = array(opts.pop('bounds'))
    opts['divisions'] = array(opts.pop('divisions'), dtype=int)
    opts['universes'] = [uFromRes[key] for key in requestedU]
    return opts


if __name__ == "__main__":
    manager = Manager(INPUT_FILE).main()

