FROM alpine:3.3
MAINTAINER Christopher Rollo (rollo.nike@gmail.com)

# Update the system
RUN apk update

# Install app server
RUN apk --no-cache add wget unzip ant tomcat7 mysql-server-5.6

# Get SecuriBench package
RUN mkdir securibench
WORKDIR securibench/
RUN wget http://suif.stanford.edu/~livshits/securibench/securibench-91a.zip
RUN unzip securibench-91a.zip
RUN wget http://downloads.sourceforge.net/project/xdoclet/xdoclet/1.2.3/xdoclet-lib-1.2.3.zip
RUN unzip xdoclet-lib-1.2.3.zip

# Install SecuriBench package

# Configure SecuriBench

# Setup UserSpace

# Get to it...
CMD /bin/bash
