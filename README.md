# Dockerfile build 
## 這裡放 3 個 image
 - airflow_tts: 以 airflow 2.2.5: python3.7 當底，更新一些安全性套件，往上蓋一些 處理聲音會用到的 linux 套件
 - api_cuda_tts: 以 行內現行的 fastapi_gpu_cuda10.1 當底，更新相關安全性套件，往上蓋一些 處理聲音會用到的 linux 套件
 - py38_cpu_vits: 以 python:3.8.17-slim 當底，更新相關安全性套件，並加上一些 處理聲音、針對日文編碼 的相關套件
 - py38_cuda_vits: 以 nvidia/cuda:11.4.3-cudnn8-runtime-ubuntu18.04 當底，更新相關安全性套件，並加上一些 處理聲音、針對日文編碼 的相關套件
 
---
備註 處理聲音的套件
sox, gfortran, libopenblas-dev, liblapack-dev, libatlas-base-dev, libblas-dev
