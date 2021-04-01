# Tips & Tricks to use FEM

## plot & visualisation
To plot in jupyter notebook you need to add the option `interactive=True` 
example: 
```
plot(mesh, interactive=True)
```

You can also export the results in vtk file and visualise it using Paraview

## mshr

install mshr
```
conda config --add channels conda-forge 
conda install mshr -y
```
