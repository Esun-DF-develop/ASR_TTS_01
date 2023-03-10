FROM nvidia/cuda:10.2-base-ubi8

FROM python:3.7

WORKDIR /app

ADD . /app

RUN apt-get update && \
    apt-get -y install sox && \
    apt-get -y install gfortran && \
    apt-get -y install libopenblas-dev liblapack-dev libatlas-base-dev libblas-dev
