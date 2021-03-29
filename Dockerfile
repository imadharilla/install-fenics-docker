FROM ubuntu:latest
MAINTAINER Aimad Harilla 


RUN mkdir /app
WORKDIR /app
COPY ./app /app


RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip \
  && bash /app/anaconda.sh -b -p $HOME/conda3

RUN /bin/bash -c "source $HOME/conda3/bin/activate"
ENV PATH /root/conda3/bin:$PATH

RUN conda create -n fenicsproject -c conda-forge fenics
RUN conda install -c anaconda ipykernel \
  && python -m ipykernel install --user --name=fenicsproject

