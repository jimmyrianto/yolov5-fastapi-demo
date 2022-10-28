FROM python:3.8.6-buster

WORKDIR /apps
COPY ./apps ./

RUN apt update -y
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install -r ./requirements.txt