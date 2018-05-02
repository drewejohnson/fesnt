"""
Scrape a results file and return cross sections
for all universes
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

TODO:W: Utilize the serpentTools ResultsReader
"""
import re
from numpy import array, float64, ndarray


REGEX = re.compile(r"=\s+\[\s+([\d\.E\-\+\s]+)")
GCU_NAME = re.compile(r"GC_UNIVERSE_NAME.*'(\d+)")
XS_TAILS = {'TOT', 'FISS', 'NSF', 'NUBAR', 'CHIT', 'INVV'}
SCATTER = {'S', 'SCATT'}

def strToArray(line, dtype=float64):
    """Convert a delimited line to numpy vector"""
    splitted = line.replace(',', ' ').split()
    return iterableToArray(splitted, dtype)


def iterableToArray(iterable, dtype=float64):
    """Convert an iterable to numpy vector"""
    return array([dtype(item) for item in iterable], dtype=dtype)


def convertToArray(item, dtype=float64):
    if isinstance(item, str):
        return strToArray(item, dtype)
    if isinstance(item, (tuple, list)):
        return iterableToArray(item, dtype)
    return array(item, dtype=dtype)

def toCamel(SERPENT):
    out = ''
    for v in SERPENT.split('_'):
        if not out:
            out = v.lower()
            continue
        out += v.capitalize()
    return out

class XSDict(dict):

    def __setitem__(self, key, value):
        dict.__setitem__(self, key, convertToArray(value))

    def setReshape(self, key, value, shape):
        valueUse = convertToArray(value).reshape(shape)
        dict.__setitem__(self, key, valueUse)


class XSContainer(object):

    def __init__(self, univ):
        self.univ = univ
        self.__energies = None
        self.__ng = None
        self.xs = XSDict()
        self.scatterMat = XSDict() 
        self.scatterXS = XSDict()

    def __repr__(self):
        return "<scrapexs.XSContainer for univ {} at {}>".format(
            self.univ, hex(id(self)))

    @property
    def ng(self):
        if self.__ng is None:
            if self.__energies is None:
                raise AttributeError("Please set an energy.")
            self.__ng = self.__energies.size - 1
        return self.__ng

    def __bool__(self):
        return any(self.xs or self.scatterXS or self.scatterMat)

    @property
    def energies(self):
        if self.__energies is None:
            return
        return self.__energies.copy()

    @energies.setter
    def energies(self, value):
        self.__setEnergies(value)
    
    def __setEnergies(self, value):
        if isinstance(value, ndarray):
            self.__energies = value
        elif isinstance(value, str):
            self.__energies = strToArray(value)
        elif isinstance(value, (tuple, list)):
            self.__energies = iterableToArray(value)
        return self.energies
   
    def addXS(self, key, value):
        value = convertToArray(value)[0::2]
        if '_' in key:
            key = toCamel(key)
        if key[:5].upper() == 'scatt':
            self.scatterXS[int(key[-1])] = value
        elif len(key) == 2 and key[0] == 's':
            shape = [self.ng] * 2
            self.scatterMat.setReshape(int(key[1]), value, shape)
        else:
            self.xs[key] = value

def scrape(fileP, b1=False, scatterOrder=3):
    startStr = re.compile('B1_' if b1 else 'INF_')
    universes = {}
    curUniv = None
    line = None
    curEnergy = None
    with open(fileP, 'r') as out:
        for lineNo, line in enumerate(out):
            if not line.strip() or line[0] in {'%'}:
                continue
            gcuM = GCU_NAME.match(line)
            if gcuM:
                key = int(gcuM.groups()[0])
                curUniv = XSContainer(key)
                universes[key] = curUniv
                if curEnergy is not None:
                    curUniv.energies = curEnergy
                continue
            if curEnergy is None and 'MACRO_E' == line[:7]:
                value = REGEX.search(line).groups()[0]
                curUniv.energies = value
                curEnergy = curUniv.energies 
                continue
            if not startStr.match(line):
                continue
            key = '_'.join([item for item in line[:20].split('_')[1:]]).strip()
            if key in XS_TAILS or key[:-1] in SCATTER:
                if key[:-1] in SCATTER and int(key[-1]) >= scatterOrder:
                    continue
                xs = REGEX.search(line).groups()[0]
                if not xs:
                    raise IOError('Something went wrong with line {}:{}\n'
                                  .format(lineNo, line))
                curUniv.addXS(toCamel(key), xs)
                continue

    return universes 

if __name__ == '__main__':
    univ = scrape('./models/fp_1D_2G_res.m')

