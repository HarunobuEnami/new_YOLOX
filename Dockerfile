FROM nvidia/cuda:11.7.1-cudnn8-devel-ubuntu20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt upgrade -y
RUN apt install -y python3 python3-pip git libglib2.0-0
RUN apt install wget libgl1-mesa-dev  -y
RUN pip3 install torch torchvision
RUN git clone https://github.com/HarunobuEnami/new_YOLOX
RUN pip3 install -U pip && pip install -r ./new_YOLOX/requirements.txt
RUN pip3 install -v -e ./new_YOLOX
RUN pip3 install cython tensorboard
RUN pip3 install 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'