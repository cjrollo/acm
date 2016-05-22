FROM ubuntu:trusty
MAINTAINER Christopher Rollo (rollo.nike@gmail.com)

# Update the system
RUN apt-get update && rm -rf /var/cache/apt/*

# Install app server
RUN apt-get install -y wget unzip ant tomcat7 mysql-server-5.6 && rm -rf /var/cache/apt/*

# Get SecuriBench package
RUN mkdir securibench
WORKDIR securibench/
RUN wget http://suif.stanford.edu/~livshits/work/securibench-micro/securibench-micro-1.08.zip
RUN unzip securibench-micro-1.08.zip
RUN wget http://downloads.sourceforge.net/project/xdoclet/xdoclet/1.2.3/xdoclet-lib-1.2.3.zip
RUN unzip xdoclet-lib-1.2.3.zip

# Install SecuriBench package
# Todo: get Tomcat up and running

# Configure SecuriBench

# Setup UserSpace

# Get to it...
CMD /bin/bash
