FROM ubuntu:trusty
MAINTAINER Christopher Rollo (rollo.nike@gmail.com)

# Configure the environment
ENV DEBIAN_FRONTEND noninteractive

# Update the system
RUN apt-get -qq update

# Install dependencies
RUN apt-get -qq install curl git

# Install Apache
RUN apt-get -qq install apache2 apache2-utils
ADD dir.conf.custom /etc/apache2/mods-enabled/dir.conf
#RUN service apache2 restart

# Install MySQL
RUN apt-get -qq install mysql-server libapache2-mod-auth-mysql php5-mysql
RUN mysql_install_db
# /usr/bin/mysqld_safe &
#RUN service mysql restart

# Install PHP
RUN apt-get -qq install php5 php5-mysql php-pear php5-gd  php5-mcrypt php5-curl
ADD phpinfo.php.custom /var/www/html/phpinfo.php

# Clean up installation files
RUN rm -rf /var/cache/apt/*

# Get Mutillidae
WORKDIR /var/www/html/
RUN git clone git://git.code.sf.net/p/mutillidae/git mutillidae

# Install Mutillidae
# Configure Mutillidae
# Setup UserSpace

# Get to it...
ADD run-services.sh /run-services.sh
RUN chmod 755 /run-services.sh
EXPOSE 80
CMD ["/run-services.sh"]
