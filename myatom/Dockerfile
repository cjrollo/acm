# Run Atom in a container
#
#	# Download atom Dockerfile
#	wget https://raw.githubusercontent.com/jessfraz/dockerfiles/master/atom/Dockerfile
#
#	# Build atom image
#	docker build -t atom .
#
#	docker run -v /tmp/.X11-unix:/tmp/.X11-unix \
#		-e DISPLAY=unix$DISPLAY atom
#
# inspired by Jessie Frazelle <jess@linux.com>
#   https://github.com/jessfraz/dockerfiles/blob/master/atom/Dockerfile
#
# Usage: docker run --rm -it --net host --cpuset-cpus 0 --memory 512mb -e DISPLAY=192.168.99.1:0 --name atom rollo/myatom:<OS>
#   this construct requires a local X server and socket to host it (hint: socat ...)

# Base docker image
FROM debian:stretch
MAINTAINER rollo

# Install Atom
# Install dependencies
RUN apt-get update && apt-get install -y \
	git \
	gconf2 \
	gconf-service \
	gvfs-bin \
	libasound2 \
	libcap2 \
	libgconf-2-4 \
	libgnome-keyring-dev \
	libgtk2.0-0 \
	libnotify4 \
	libnss3 \
	libxkbfile1 \
	libxss1 \
	libxtst6 \
	xdg-utils \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

ENV ATOM_VERSION 1.13.0

# download the source
RUN buildDeps=' \
		ca-certificates \
		curl \
	' \
	&& set -x \
	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl -sSL https://github.com/atom/atom/releases/download/v${ATOM_VERSION}/atom-amd64.deb -o /tmp/atom-amd64.deb \
	&& dpkg -i /tmp/atom-amd64.deb \
	&& rm -rf /tmp/*.deb \
	&& apt-get purge -y --auto-remove $buildDeps

# CREATE USERSPACE
# Create a runtime user
RUN groupadd -r dev && useradd -m -r -g dev dev

# Switch to the userspace
USER dev
ENV HOME /home/dev
WORKDIR $HOME

# Autorun Atom
ENTRYPOINT [ "atom", "-f" ]
