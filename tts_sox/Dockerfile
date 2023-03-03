FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

RUN apt -y update \ 
    &&  DEBIAN_FRONTEND=noninteractive apt install -y \
        build-essential \
        cmake \
        libksba8=1.3.5-2ubuntu0.18.04.2 \
        linux-libc-dev=4.15.0-206.217\
        libssl1.1=1.1.1-1ubuntu2.1~18.04.21\
        openssl=1.1.1-1ubuntu2.1~18.04.21\
        binutils=2.30-21ubuntu1~18.04.8\
        ca-certificates=20211016ubuntu0.18.04.1\
        dirmngr=2.2.4-1ubuntu1.6\
        dpkg=1.19.0.5ubuntu2.4\
        e2fsprogs=1.44.1-1ubuntu1.4\
        gnupg=2.2.4-1ubuntu1.6\
        libasn1-8-heimdal=7.5.0+dfsg-1ubuntu0.4\
        libbinutils=2.30-21ubuntu1~18.04.8\
        libcom-err2=1.44.1-1ubuntu1.4\
        libgmp10=2:6.1.2+dfsg-2ubuntu0.1\
        libgnutls30=3.5.18-1ubuntu1.6\
        libgssapi3-heimdal=7.5.0+dfsg-1ubuntu0.4\
        libpam-modules=1.1.8-3.6ubuntu2.18.04.6\
        libpcre3=2:8.39-9ubuntu0.1\
        libperl5.26=5.26.1-6ubuntu0.6\
        perl=5.26.1-6ubuntu0.6\
        tar=1.29b-2ubuntu0.4\
        libprotobuf-dev \
        libpq-dev \
        protobuf-compiler \
        python3-dev \
        python3-pip \
        libzbar0 \
        libgl1 \
        libsm6 \
        libxext6 \
        libxrender-dev \
        tzdata \
        locales

RUN apt-get -y install sox
RUN apt-get -y install gfortran
RUN apt-get -y install libopenblas-dev liblapack-dev libatlas-base-dev libblas-dev

RUN pip3 install pip==21.2.1

WORKDIR /usr/local/cuda/lib64/
RUN cp libcufft.so libcufft.so.10.0
RUN cp libcurand.so libcurand.so.10.0
RUN cp libcusolver.so libcusolver.10.0
RUN cp libcusparse.so libcusparse.10.0
RUN cp libcusolver.so libcusolver.so.10.0
RUN cp libcusparse.so libcusparse.so.10.0
RUN cp libcudart.so libcudart.so.10.0

WORKDIR /usr/lib/x86_64-linux-gnu/
RUN cp libcublas.so libcublas.so.10.0

ENV LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"

RUN TZ=Asia/Taipei \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata 

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

