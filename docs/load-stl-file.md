# Loading stl file to FenicsProject

## install meshio 
```
pip install meshio
pip install h5py
```

## Convert stl file to xdmf 
This code will not work in jupyter notebook. you need to run the script directly in python file.
```
msh = meshio.read('./bottle.stl')
meshio.write('./bottle.xdmf', msh)
```

## load xdmf converted file in Fenics 
```
mesh = Mesh()
XDMFFile(MPI.comm_world, "./foo.xdmf").read(mesh)

# define Function space over the mesh 
V = VectorFunctionSpace(mesh, 'P', 1)
```
