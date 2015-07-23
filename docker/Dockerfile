FROM eduardosteps/rails4-env:latest

RUN /bin/bash
RUN echo 'gem: --no-document' >> ~/.gemrc
RUN gem update --system
RUN apt-get -y update && apt-get -y install apt-utils

#for pkg in bash curl git patch bzip2 build-essential openssl libreadline6 libreadline6-dev git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev libx11-dev libxcursor-dev libxext-dev libxrandr-dev libxft2-dev freeglut3-dev libjpeg-turbo8-dev libjpeg8-dev libjpeg-dev zlib1g-dev libbz2-dev libpng12-dev libtiff4-dev;
#do
#  sudo apt-get -y install $pkg
#done

#RUN sudo apt-get -y install bash 
#RUN sudo apt-get -y install curl 
#RUN sudo apt-get -y install git 
#RUN sudo apt-get -y install patch 
#RUN sudo apt-get -y install bzip2 
#RUN sudo apt-get -y install build-essential 
#RUN sudo apt-get -y install openssl 
#RUN sudo apt-get -y install libreadline6 
#RUN sudo apt-get -y install libreadline6-dev 
#RUN sudo apt-get -y install git-core 
#RUN sudo apt-get -y install zlib1g 
#RUN sudo apt-get -y install zlib1g-dev 
#RUN sudo apt-get -y install libssl-dev 
#RUN sudo apt-get -y install libyaml-dev 
#RUN sudo apt-get -y install libsqlite3-dev 
#RUN sudo apt-get -y install sqlite3 
#RUN sudo apt-get -y install libxml2-dev 
#RUN sudo apt-get -y install libxslt-dev 
#RUN sudo apt-get -y install autoconf 
#RUN sudo apt-get -y install libc6-dev 
#RUN sudo apt-get -y install libgdbm-dev 
#RUN sudo apt-get -y install ncurses-dev 
#RUN sudo apt-get -y install automake 
#RUN sudo apt-get -y install libtool 
#RUN sudo apt-get -y install bison 
#RUN sudo apt-get -y install subversion 
#RUN sudo apt-get -y install pkg-config 
#RUN sudo apt-get -y install libffi-dev 
#RUN sudo apt-get -y install libx11-dev 
#RUN sudo apt-get -y install libxcursor-dev 
#RUN sudo apt-get -y install libxext-dev 
#RUN sudo apt-get -y install libxrandr-dev 
#RUN sudo apt-get -y install libxft2-dev 
#RUN sudo apt-get -y install freeglut3-dev 
###RUN sudo apt-get -y install libjpeg-turbo8-dev 
#RUN sudo apt-get -y install libjpeg8-dev 
#RUN sudo apt-get -y install libjpeg-dev 
#RUN sudo apt-get -y install zlib1g-dev 
#RUN sudo apt-get -y install libbz2-dev 
#RUN sudo apt-get -y install libpng12-dev 
#RUN sudo apt-get -y install libtiff4-dev


#RUN gem install fxruby
#RUN gem install watobo
RUN gem install rspec
RUN service postgresql start

CMD /bin/bash

