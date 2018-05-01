
# coding: utf-8

# # Analytic solution

# In[1]:


import numpy

def analytic(mu, tvec, xvec, sigmat, invvel, gammaFunc):
    if not isinstance(tvec, numpy.ndarray):
        tvec = numpy.array(tvec, dtype=float)
    meshT, meshX = numpy.meshgrid(tvec, xvec)
    meshXShift = meshX  * invv / mu
    unitStep1 = numpy.where(meshXShift < meshT)
    unitStep0 = numpy.where(meshXShift >= meshT)
    out = numpy.empty_like(meshT)
    out[unitStep0] = 0.0
    out[unitStep1] = (
        gammaFunc(mu, meshT[unitStep1] - meshXShift[unitStep1]) *
        numpy.exp(-meshX[unitStep1] * sigmat / mu))
    return out

def gamma1(mu, t):
    return mu * numpy.sin(t)

if __name__ == '__main__':

    from matplotlib import pyplot
    from scrapexs import scrape

    pureAbsU = scrape('fp_1D_1G_PA_res.m')[12]
    sigt = pureAbsU.xs['tot'][0]
    invv = pureAbsU.xs['invv'][0]
    print(sigt, invv)


    # ## Geometric properties

    # In[3]:


    xlim = 1
    nX = 100
    tlim = 10
    nT = 10000
    xgrid = numpy.linspace(0, xlim, nX)
    tgrid = numpy.linspace(0, tlim, nT)


    # ## Left boundary condition

    # In[4]:


    def gamma1(mu, t):
        return mu * numpy.sin(t)


    # ## Generate analytic solution

    # In[25]:


    mu = 0.99
    tMesh, xMesh = numpy.meshgrid(tgrid, xgrid)
    soln = numpy.empty_like(tMesh)


    # In[26]:


    shiftedXMesh = xMesh * invv / mu
    unit1 = numpy.where(tMesh - shiftedXMesh > 0)
    unit0 = numpy.where(tMesh - shiftedXMesh <= 0)
    predMesh = numpy.exp(-xMesh[unit1] * sigt / mu)


    # In[27]:


    soln[unit0] = 0.0
    soln[unit1] = (
        predMesh
        * gamma1(mu, tMesh[unit1]  - shiftedXMesh[unit1])
    )


    # In[28]:


    pyplot.pcolormesh(xMesh, tMesh, soln, cmap='PuOr_r')
    pyplot.colorbar()
    pyplot.xlabel('X [cm]')
    pyplot.ylabel('Time [s]')
    title = (
        r'$\psi(x, \mu, t) = \mu sin(t-x/\mu v)u(t-x/\mu v)e^{-x\sigma_t/\mu}$'
    )
    muTitle = r'$\mu={}$'.format(mu)
    pyplot.title(muTitle);
    pyplot.suptitle(title);


    # # As function

    # In[34]:




    # In[35]:


    func = analytic(mu, tgrid, xgrid, sigt, invv, gamma1)


    # In[37]:


    pyplot.pcolormesh(xMesh, tMesh, func, cmap='PuOr_r')
    pyplot.colorbar()
    pyplot.xlabel('X [cm]')
    pyplot.ylabel('Time [s]')
    title = (
        r'$\psi(x, \mu, t) = \mu sin(t-x/\mu v)u(t-x/\mu v)e^{-x\sigma_t/\mu}$'
    )
    muTitle = r'$\mu={}$'.format(mu)
    pyplot.title(muTitle);
    pyplot.suptitle(title);

