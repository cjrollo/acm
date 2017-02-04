# Run Atom in a container
## inspired by Jessie Frazelle <jess@linux.com>
#
# Usage: docker run --rm -it --net host --cpuset-cpus 0 --memory 512mb -v $(pwd):/home/dev/src -e DISPLAY=192.168.99.1:0 --name atom rollo/myatom:<OS>
#   This construct requires a local X server and socket to host it (hint: socat ...)
#   A Node install with Angular client is locally available for development
#   Take care to note the directory where this is launched. the CWD will be mounted as a a volume to contain the code
#   Default is to launch Atom. A browser is locally available for testing.
#   All application dependencies should be brought in via package.json, using npm install.
#   You might, as root, need to run
#     apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*
# Build: docker build --rm -t rollo/mydev:debian .
#

# Base docker image
FROM debian:jessie
MAINTAINER rollo

# Install Atom, Node, Browser

# Install Atom
# usage: [ "atom", "-f" ]
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

ENV ATOM_VERSION 1.12.5

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


# Install Node using "bootstrap.sh"
# usage:  [ "node" ]

# Install Browser using "bootstrap.sh"
# usage: [ "google-chrome", "--user-data-dir=/data", "--no-sandbox" ]   # <-- yes. this is bad. fix the kernel!

# CREATE USERSPACE
# Create a runtime user
RUN groupadd -r dev && useradd -m -r -g dev dev

# Switch to the userspace
USER dev
ENV HOME /home/dev
WORKDIR $HOME
ADD ./src/bootstrap.sh $HOME/src

# Autorun Atom
#ENTRYPOINT [ "atom", "-f" ]

ENTRYPOINT [ "/home/dev/src/bootstrap.sh" ]
