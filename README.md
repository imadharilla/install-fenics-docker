# Fenics Installation using Docker

Please make sure that docker is up and running!

1- First download anaconda installation : https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh

2- Rename the file to `anaconda.sh` and put it in app folder.

## type commands :
```
$ docker-compose build
$ docker-compose run --service-ports --rm  app
```

## Activate conda & fenics envirements : 

```
$ source $HOME/conda3/bin/activate
$ conda activate fenicsproject
```

## Setup fenics env in Jupyter 

```
$ conda install -c anaconda ipykernel
$ python -m ipykernel install --user --name=fenicsproject
```

## Run Jupyter notebook
```
$ jupyter notebook --ip=0.0.0.0 --port=8080 --allow-root 
```
