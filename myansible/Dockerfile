FROM alpine:3.4
MAINTAINER rollo
RUN apk add --no-cache ansible
RUN mkdir /etc/ansible
COPY ansible/hosts /etc/ansible
WORKDIR /home
CMD /bin/ash
