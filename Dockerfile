FROM ubuntu:18.04

WORKDIR /usr/src/app

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update
RUN apt-get -y upgrade 
RUN apt-get -y install make git zlib1g-dev libssl-dev gperf php cmake g++
