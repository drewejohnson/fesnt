# fesnt
Finite element Sn transport for math6641 project

Solve the 1D, 1G discrete ordinates neutron transport equation with a fairly flexible input structure.

# Structure
1. `fesnt.py` - Main entry point. Can be used as a script as `python3 fesnt.py <inputfile>`. 
   Will then create a [pickled instance](https://github.com/drewejohnson/fesnt/blob/058f4bf038c77ed7d1027de625226eb34fa139af/fesnt.py#L413) of the `Manager` object which stores all data and runs the show
1. `mesh.py` - `Mesh` objects that store material properties inside a single element. Responsible for solving a linear system given
   and updating iteration-wise fluxes
1. `solver.py` - `Solver` class that marches through time levels, angles, and meshes. Calls upon `Mesh` objects to solve the problems.
1. `report` - LaTeX document to build the report
1. `figures` - A collection of gifs and images that show how well the method works/doesn't work

# Known issues
Due to some end of the semester travel, I had to get something to submit. There are some definite issues with this
project, as detailed in the report and the TODO file. Time allowing I will attempt to polish up this project :crossed_fingers:

1. Test functions used in the finite element method do not satisfy homogeneous Dirichlet boundary conditions 
   across the element
1. Scattering and fission sources fail to propagate through to negative mu fluxes

# Usage
When launching `fesnt.py` as a script, the pickled data can be loaded and then used to create gifs with the following 
simple two-step procedure

1. Make all the images - python script for de-pickling
```
# this chunk only needed to load the manager from the pickled file
import pickle
from fesnt import *

with open(<pickledFileHere>, 'rb') as inp:
  manager = pickle.load(inp)

# with any manager
manager.angularGif(pointsPerMesh=5)
```
Alternatively, load a manager from within python with
```
from fesnt import Manager
m = Manager('test.yaml')
m.main()
```

A collection on images will be saved in a directory matching the name of the input file, e.g. `test.yaml` :arrow_right: `test/teststep<XYZ>.png` 

2. Convert the images to a gif
The [`Image Magick convert`](https://imagemagick.org/script/convert.php) function works very well for this. 
The gifs found in `figures` were produced with the following code
```
$ cd test
$ convert -delay 15 -loop 0 *.png test.fig
```

# Some gifs
Pure absorber

![](https://github.com/drewejohnson/fesnt/blob/master/figures/example-pureAbsorber-s4.gif)

Multi-region with fission and scattering 

![](https://github.com/drewejohnson/fesnt/blob/master/figures/example-multi-media.gif)

# License
The full license can be found [here](https://github.com/drewejohnson/fesnt/blob/master/LICENSE)

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
