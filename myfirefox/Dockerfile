# Run Firefox in a container
#
# docker run -it \
#	--net host \ # may as well YOLO
#	--cpuset-cpus 0 \ # control the cpu
#	--memory 512mb \ # max memory it can use
#	-v /tmp/.X11-unix:/tmp/.X11-unix \ # mount the X11 socket
#	-e DISPLAY=unix$DISPLAY \
#	-v $HOME/Downloads:/root/Downloads \
#	--device /dev/snd \ # so we have sound
#	-v /dev/shm:/dev/shm \
#	--name firefox \
#	jess/firefox
#
# inspired by Jessie Frazelle <jess@linux.com>
#   https://github.com/jessfraz/dockerfiles/blob/master/firefox/Dockerfile
#
# Usage: docker run --rm -it --net host --cpuset-cpus 0 --memory 512mb -e DISPLAY=192.168.99.1:0 --name firefox rollo/myfirefox
#   this construct requires a local X server and socket to host it (hint: socat ...)

# Base docker image
FROM ubuntu:17.04
MAINTAINER rollo # that's me! ;-)

RUN apt-get update && apt-get install -y \
  firefox \
  libgl1-mesa-dri \
	libgl1-mesa-glx \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*
# Create a runtime user
RUN groupadd -r dev && useradd -m -r -g dev dev

# Switch to the userspace
USER dev
ENV HOME /home/dev
WORKDIR $HOME

# Install saved configuration
#COPY local.conf /etc/fonts/local.conf

# Autorun firefox
ENTRYPOINT [ "/usr/bin/firefox" ]
