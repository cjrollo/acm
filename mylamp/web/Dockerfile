FROM ubuntu:trusty
MAINTAINER Christopher Rollo (rollo.nike@gmail.com)

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y install supervisor git libapache2-mod-php5 mysql-server pwgen && \
  echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Add image configuration and scripts
ADD start-apache2.sh /start-apache2.sh
ADD run.sh /run.sh
RUN chmod 755 /*.sh
ADD supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf

# config to enable .htaccess
ADD apache_default /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

EXPOSE 80
CMD ["/run.sh"]


#Install Apache2/dependencies
	sudo apt-get install apache2 apache2-utils

	#Modify file /etc/apache2/mods-enabled/dir.conf
	sudo nano /etc/apache2/mods-enabled/dir.conf

	#Change the following line:
	<IfModule mod_dir.c>
		   DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm
	</IfModule>

	#Change to:
	<IfModule mod_dir.c>
		   #DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm
		   DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
	</IfModule>

	#Restart apache2 and verify apache2 is working by visiting http://ip_address or http://localhost
	sudo service apache2 restart
	firefox http://localhost
