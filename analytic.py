
# coding: utf-8

# # Analytic solution

# In[1]:


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


