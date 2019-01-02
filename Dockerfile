FROM ubuntu:16.04

RUN apt update && apt install curl -y && apt install sudo -y && apt install make -y
RUN adduser test
RUN gpasswd -a test sudo
RUN echo test:test | chpasswd
WORKDIR /home/test

