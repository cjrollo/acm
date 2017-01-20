# Run Atom in a container
#
# Building the image
# Clone this repository, change into the source directory and run:
#   docker build . -t atom
# Running Atom
#    docker run -d -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
#              -v /dev/shm:/dev/shm \
#              -v ${HOME}/.atom:/home/atom/.atom \
#              -e DISPLAY \
#              jamesnetherton/docker-atom-editor
# Note that -v /dev/shm:/dev/shm may be optional and can be replaced by --shm-size="<number><unit>".
#
# inspired by James Netherton
#   https://github.com/jamesnetherton/docker-atom-editor/blob/master/Dockerfile
#
# Usage: docker run --rm -it --net host --cpuset-cpus 0 --memory 512mb -e DISPLAY=192.168.99.1:0 --name atom rollo/myatom:<OS>
#   this construct requires a local X server and socket to host it (hint: socat ...)

# Base docker image
FROM ubuntu:latest
MAINTAINER rollo

# Install Atom
ENV ATOM_VERSION v1.13.0

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      fakeroot \
      gconf2 \
      gconf-service \
      git \
      gvfs-bin \
      libasound2 \
      libcap2 \
      libgconf-2-4 \
      libgtk2.0-0 \
      libnotify4 \
      libnss3 \
      libxkbfile1 \
      libxss1 \
      libxtst6 \
      python \
      xdg-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    curl -L https://github.com/atom/atom/releases/download/${ATOM_VERSION}/atom-amd64.deb > /tmp/atom.deb && \
    dpkg -i /tmp/atom.deb && \
    rm -f /tmp/atom.deb

# CREATE USERSPACE
# Create a runtime user
RUN groupadd -r dev && useradd -m -r -g dev dev

# Switch to the userspace
USER dev
ENV HOME /home/dev
WORKDIR $HOME

# Autorun Atom
ENTRYPOINT [ "atom", "-f" ]
