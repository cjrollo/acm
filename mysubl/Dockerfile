# Run Sublime in a container
##
# inspired by Jessie Frazelle <jess@linux.com>, Christian Koep <christian.koep@fom-net.de>, Chuck Knox <charles.m.knox@gmail.com>
#   https://github.com/jessfraz/dockerfiles/blob/master/sublime-text-3/Dockerfile
#
# USAGE:
#	# Build sublime-text 3 image
#	docker build -t sublime-text:3 .
#
#	# Run the container and mount the local settings and your code
#   # Your code must be under $HOME/Documents, you only need to change it here.
#		docker run -d -it \
#			-w $HOME/Documents \
#			-v $HOME/.config/sublime-text-3:$HOME/.config/sublime-text-3 \
#			-v $HOME/Documents:$HOME/Documents \
#			-v /tmp/.X11-unix:/tmp/.X11-unix \
#			-v $HOME/.local/share/recently-used.xbel:$HOME/.local/share/recently-used.xbel \
#			-e DISPLAY=$DISPLAY \
#			-e NEWUSER=$USER \
#			-e LANG=en_US.UTF-8 \
#			sublime-text:3
#
# Usage: docker run --rm -it --net host --cpuset-cpus 0 --memory 512mb -e DISPLAY=192.168.99.1:0 --name subl rollo/subl:<OS>
#   Pro tip: this construct requires a local X server and socket to host it (hint: socat ...)
#   Pro tip: mount rw volume to save state, code, config etc (hint: -v)

# Base docker image
FROM debian:stretch
MAINTAINER rollo

# Install Sublime
# Install dependencies (libcanberra-gtk-module) and gets rid of a lot of annoying error messages.
RUN apt-get update && apt-get -y install \
	locales \
	libcanberra-gtk-module \
	ca-certificates \
	curl \
	tar \
	bzip2 \
	libglib2.0-0 \
	libx11-6 \
	libcairo2 \
	libpango-1.0-0 \
	libpangocairo-1.0-0 \
	libgtk2.0-0 \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

# Get the tarball
ENV SUBLIME_VERSION build_3126

RUN curl -sSL "https://download.sublimetext.com/sublime_text_3_${SUBLIME_VERSION}_x64.tar.bz2" -o /tmp/sublime.tar.bz2 \
	&& mkdir -p /usr/src/sublime_text \
	&& tar -xjf /tmp/sublime.tar.bz2 -C /usr/src/sublime_text --strip-components 1 \
	&& rm /tmp/sublime.tar.bz2*

# Generate system-wide UTF-8 locale
# Sublime might nag about Ascii issue w/ Package Control otherwise
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
	locale-gen && \
	echo "LANG=en_US.UTF-8" > /etc/locale.conf


# CREATE USERSPACE
# Create a runtime user
RUN groupadd -r dev && useradd -m -r -g dev dev

# Switch to the userspace
USER dev
ENV HOME /home/dev
WORKDIR $HOME

# Autorun Sublime
ENTRYPOINT [ "/usr/src/sublime_text/sublime_text", "-w" ]
