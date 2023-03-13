FROM apache/airflow:2.2.5-python3.7
RUN apt-get update && \
    apt-get -y install sox && \
    apt-get -y install gfortran && \
    apt-get -y install libopenblas-dev liblapack-dev libatlas-base-dev libblas-dev && \

RUN pip3 install -U pip==21.2.1
RUN pip3 install setuptools==65.5.1
