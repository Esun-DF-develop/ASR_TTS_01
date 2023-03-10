FROM nvidia/cuda:10.2-base-ubi8
RUN apt -y update \ 
    libapr1=1.7.0-6+deb11u2
    
FROM python:3.7

WORKDIR /app

ADD . /app

RUN apt-get update && \
    apt-get -y install sox && \
    apt-get -y install gfortran && \
    apt-get -y install libopenblas-dev liblapack-dev libatlas-base-dev libblas-dev
RUN pip3 install -U pip==21.2.1
RUN pip3 install setuptools==65.5.1
