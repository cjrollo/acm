# Run chromium browser from a container
#
# docker run -it \
#	--net host \ # may as well YOLO
#	--cpuset-cpus 0 \ # control the cpu
#	--memory 512mb \ # max memory it can use
#	-v /tmp/.X11-unix:/tmp/.X11-unix \ # mount the X11 socket
#	-e DISPLAY=unix$DISPLAY \
#	-v $HOME/Downloads:/root/Downloads \
#	-v $HOME/.config/google-chrome/:/data \ # if you want to save state
#	--device /dev/snd \ # so we have sound
#	-v /dev/shm:/dev/shm \
#	--name chrome \
#	jess/chrome
#
# inspired by Jessie Frazelle <jess@linux.com>
#   https://github.com/jessfraz/dockerfiles/blob/master/chrome/stable/Dockerfile
#
# Usage: docker run --rm -it --net host --cpuset-cpus 0 --memory 512mb -e DISPLAY=192.168.99.1:0 --name chrome rollo/mychromium
#   this construct requires a local X server and socket to host it (hint: socat ...)

# Base docker image
#FROM alpine
#FROM alpine:edge
FROM alpine:latest

MAINTAINER rollo # that's me! ;-)

# Install chromium
RUN apk --update --no-cache add \
  chromium \
  libexif \
  udev \
  mesa-gl \
  mesa-dri-swrast

# Create a runtime user
#RUN groupadd -r dev && useradd -m -r -g dev dev
RUN adduser -D -u 1000 dev

# Switch to the userspace
USER dev
ENV HOME /home/dev
WORKDIR $HOME

# Autorun chromium
ENTRYPOINT [ "/usr/bin/chromium-browser" ]
CMD [ "--user-data-dir=/data" ]
