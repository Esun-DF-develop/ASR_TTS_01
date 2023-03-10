FROM juanwei/tts_sox:d4140bdaedcc0895b777640f17b8173594495bdb 
RUN apt -y update \
    && DEBIAN_FRONTEND=noninteractive apt install -y \
    build-essential \
    cmake \
    libapr1=1.7.0-8
    
FROM python:3.7

RUN pip3 install -U pip==21.2.1
RUN pip3 install setuptools==65.5.1
