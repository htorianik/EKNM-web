FROM ubuntu:18.04

WORKDIR /usr/src/app
COPY ./td /usr/src/td
COPY ./environment.sh /usr/src/environment.sh
COPY ./pip-requirements.txt /usr/src/pip-requirements.txt

# Building Telegram Database
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update
RUN apt-get -y upgrade 
RUN apt-get -y install make git zlib1g-dev libssl-dev gperf php cmake g++

# Creating python environment
RUN apt-get -y install python3.7 python3-pip
RUN pip3 install -r /usr/src/pip-requirements.txt


