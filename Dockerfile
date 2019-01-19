FROM ubuntu:16.04

RUN apt update && apt install curl sudo make vim -y
RUN adduser test
RUN gpasswd -a test sudo
RUN echo test:test | chpasswd
WORKDIR /home/test
USER test
RUN sh -c "$(curl -L dot.thalathalaylah.com)"
WORKDIR /home/test/.env_constructions
RUN ROOT_PASSWORD=test make install
WORKDIR /home/test

