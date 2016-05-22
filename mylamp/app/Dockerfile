FROM alpine:edge
MAINTAINER Christopher Rollo (rollo.nike@gmail.com)

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y install git php5-mysql php-apc php5-mcrypt

# Configure /app folder with my sample app
RUN git clone https://github.com/cjrollo/php.git /app
RUN mkdir -p /app && rm -fr /var/www/html && ln -s /app /var/www/html

#Environment variables to configure php
ENV PHP_UPLOAD_MAX_FILESIZE 10M
ENV PHP_POST_MAX_SIZE 10M
