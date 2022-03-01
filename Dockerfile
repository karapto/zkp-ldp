FROM python:3.9-slim-buster

RUN apt-get update

RUN apt-get -y install git
RUN apt-get install -y python3-pip

RUN git clone https://github.com/karapto/zkp-ldp.git
WORKDIR /zkp-ldp


