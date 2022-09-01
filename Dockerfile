FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt upgrade -y
RUN apt install -y git libglib2.0-0 wget libgl1-mesa-dev build-essential
RUN git clone https://github.com/HarunobuEnami/new_YOLOX
RUN pip3 install -U pip && pip install -r ./new_YOLOX/requirements.txt && pip3 install -v -e ./new_YOLOX && pip3 install cython tensorboard && pip3 install 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'