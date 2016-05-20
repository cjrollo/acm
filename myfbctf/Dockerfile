FROM ubuntu:14.04
MAINTAINER rollo (rollo.nike@gmail.com)

RUN apt-get update -y
RUN apt-get install -y git curl software-properties-common
RUN git clone https://github.com/facebook/fbctf
WORKDIR fbctf

##Fix some system problems
RUN touch /etc/update-motd.d/51-cloudguest
ADD ./extra/lib.sh.patched /fbctf/extra/lib.sh
#RUN ./extra/provision.sh dev $PWD

EXPOSE 80
EXPOSE 443
CMD echo "To startup, run this: ./extra/provision.sh dev \$PWD " \
  && /bin/bash

## sudo apt-get install git
## git clone https://github.com/facebook/fbctf
## cd fbctf
## ./extra/provision.sh dev $PWD

## clean up installers
# RUN rm -rf /var/lib/apt/lists/*
