# coding: utf-8
"""
Analytic solution
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


import numpy

def analytic(mu, tvec, xvec, sigmat, invvel, gammaFunc):
    if not isinstance(tvec, numpy.ndarray):
        tvec = numpy.array(tvec, dtype=float)
    meshT, meshX = numpy.meshgrid(tvec, xvec)
    out = numpy.empty_like(meshT)
    if mu < 0:
        out.fill(0)
        return out
    meshXShift = meshX  * invvel / mu
    unitStep1 = numpy.where(meshXShift < meshT)
    unitStep0 = numpy.where(meshXShift >= meshT)
    out[unitStep0] = 0.0
    out[unitStep1] = (
        gammaFunc(mu, meshT[unitStep1] - meshXShift[unitStep1]) *
        numpy.exp(-meshX[unitStep1] * sigmat / mu))
    return out

FREQ = 1E3
def gamma1(mu, t):
    return mu * (numpy.sin(t * FREQ) ** 2)

# 
# Material properties from pure absorber
#

SIG_T = 7.45857E-01
INVV = 1.08743E-07 * 1E4


def pureAbsorberSoln(mu, tvec, xvec):
    return analytic(mu, tvec, xvec, SIG_T, INVV, gamma1)


