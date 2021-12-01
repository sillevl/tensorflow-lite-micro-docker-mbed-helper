FROM ubuntu:20.04

RUN apt update && apt upgrade -y
RUN apt install \
  git \
  python3 \
  python3-pip \ 
  zip \ 
  curl \
  gcc-arm-none-eabi \ 
  binutils-arm-none-eabi \
  xxd \
  wget\
  -y

RUN pip3 install mbed-cli
RUN pip3 install Pillow

RUN git clone --depth 1 https://github.com/tensorflow/tflite-micro.git /tensorflow

WORKDIR /tensorflow