FROM ubuntu:14.04
#FROM alpine
MAINTAINER rollo

RUN apt-get update && apt-get install -y chromium-browser
#RUN apk update && apk add chromium

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
CMD pkexec --user developer env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY
CMD /usr/bin/chromium-browser
