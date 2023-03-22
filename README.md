# Dockerfile build 
## 這裡放兩個 image
 - airflow_tts: 以 airflow 2.2.5: python3.7 當底，更新一些安全性套件，往上蓋一些 處理聲音會用到的 linux 套件
 - 以 行內現行的 fastapi_gpu_cuda10.1 當底，更新相關安全性套件，往上蓋一些 處理聲音會用到的 linux 套件
 
---
備註 處理聲音的套件
sox, gfortran, libopenblas-dev, liblapack-dev, libatlas-base-dev, libblas-dev
