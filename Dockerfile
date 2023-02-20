FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install sox
RUN apt-get -y install gfortran
RUN apt-get -y install libopenblas-dev liblapack-dev libatlas-base-dev libblas-dev