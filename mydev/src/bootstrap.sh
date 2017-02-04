#!/bin/bash

# Install Node
#   based on:
install-nde () {
echo "Installing Node..."
  apt-get update && apt-get install -y \
  curl \
  sudo \
  && curl -sL https://deb.nodesource.com/setup_7.x | sudo bash - \
  && apt-get install -y nodejs
echo "DONE Installing Node."
}

# Install Chrome
#   based on: https://github.com/jessfraz/dockerfiles/blob/master/chrome/stable/Dockerfile
install-ch () {
  echo "Installing Chrome..."
  apt-get update && apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg \
	hicolor-icon-theme \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	libpulse0 \
	libv4l-0 \
	fonts-symbola \
	--no-install-recommends \
	&& curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
	&& echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list \
	&& apt-get update && apt-get install -y \
	google-chrome-stable \
	--no-install-recommends \
	&& apt-get purge --auto-remove -y curl \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -f /etc/apt/sources.list.d/google.list
echo "DONE Installing Chrome."
}

# Install Firefox
#   based on: https://github.com/jessfraz/dockerfiles/blob/f9b1205a5f973149613ba2210e3fdb23d145d84d/firefox/Dockerfile
install-ff () {
  echo "Installing Firefox..."
  echo "This is a TODO"
#	dirmngr \
#	gnupg \
#  libfontconfig1 \
#	--no-install-recommends \
#	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0AB215679C571D1C8325275B9BDB3D89CE49EC21 \
#	&& echo "deb http://ppa.launchpad.net/mozillateam/firefox-next/ubuntu zesty main" >> /etc/apt/sources.list.d/firefox.list \
# && apt-get update && apt-get install -y \
# ca-certificates \
# firefox \
# hicolor-icon-theme \
#  libasound2 \
# libgl1-mesa-dri \
# libgl1-mesa-glx \
# --no-install-recommends \
# && rm -rf /var/lib/apt/lists/* \
# && rm -f /etc/apt/sources.list.d/firefox.list
  echo "DONE Installing Firefox."
}

# Parse the command
PS3='Please enter your choice: '
options=("Node" "Chrome" "Firefox" "All" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Node")
            echo "You chose to install only Node"
            install-nde;
            ;;
        "Chrome")
            echo "You chose to install only Chrome"
            install-ch;
            ;;
        "Firefox")
            echo "you chose to install only Firefox"
            install-ff;
            ;;
        "All")
            echo "You chose to install everything"
            install-nde;
            install-ch;
            #install-ff;
            break
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
