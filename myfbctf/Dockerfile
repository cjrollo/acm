FROM ubuntu:14.04
MAINTAINER rollo (rollo.nike@gmail.com)

RUN apt-get update -qy
RUN apt-get install -qy git
RUN mkdir /tmp/fbctf
WORKDIR /tmp/fbctf
RUN git clone https://github.com/facebook/fbctf
WORKDIR /tmp/fbctf/fbctf
RUN ./extra/provision.sh dev 'pwd'
CMD /bin/bash
