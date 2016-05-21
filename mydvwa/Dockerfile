FROM tutum/lamp:latest
MAINTAINER Christopher Rollo (rollo.nike@gmail.com)

ENV DEBIAN_FRONTEND noninteractive

# Preparation
#RUN wget https://github.com/RandomStorm/DVWA/archive/v1.9.zip
RUN \
  rm -fr /app/* && \
  apt-get update && apt-get install -yqq wget unzip && \
  rm -rf /var/lib/apt/lists/* && \
  wget https://github.com/RandomStorm/DVWA/archive/v1.9.zip  && \
  unzip /v1.9.zip && \
  rm -rf /app/* && \
  cp -r /DVWA-1.9/* /app && \
  rm -rf /DVWA-1.9 && \
#  sed -i "s/^\$_DVWA\[ 'db_user' \] = 'root'/\$_DVWA[ 'db_user' ] = 'admin'/g" /app/config/config.inc.php && \
  sed -i "s/^\$_DVWA\[ 'db_user' \]     = 'root'/\$_DVWA[ 'db_user' ]     = 'admin'/g" /app/config/config.inc.php && \
  echo "sed -i \"s/p@ssw0rd/\$PASS/g\" /app/config/config.inc.php" >> /create_mysql_admin_user.sh  && \
  echo 'session.save_path = "/tmp"' >> /etc/php5/apache2/php.ini

EXPOSE 80 3306
CMD ["/run.sh"]
