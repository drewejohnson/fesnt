Crucial
-------
main.py:5:TODO:Plotting
mesh.py:121:#TODO:Update source vector for each iteration with integral coeffs from known fluxes from upwind, boundary conditions
poly.py:4:TODO:Watch polynomial weights in cells - some can be 0(1E3)

Wishlist
--------
main.py:6:TODO:W:Status logging
main.py:7:TODO:W:Default number of divisions
main.py:8:TODO:W:Allow a single entry to be entered as divisions and applied to all zones
main.py:9:TODO:W:Criticality calculation
main.py:148:# TODO:W:Way to set initial conditions per zone
mesh.py:147:TODO:W:Store these on the object? Maybe not ideal for large problems
poly.py:5:TODO:W:Cythonize
poly.py:30:TODO:W:Use alternative scheme, e.g. Barycentric
poly.py:31:TODO:W:https://epubs.siam.org/doi/pdf/10.1137/S0036144502417715
poly.py:32:TODO:W:Current implementation could be unstable for large matrices
poly.py:33:TODO:W:Really any other implementation would suffice ¯\_(ツ)_/¯
scrapexs.py:5:TODO:W:Utilize the serpentTools ResultsReader
