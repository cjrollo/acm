FROM alpine:3.1
MAINTAINER Christopher Rollo (rollo.nike@gmail.com)
RUN apk add --update
RUN apk add apache2 lighttpd php-common php-iconv php-json php-gd php-curl php-xml php-pgsql php-imap php-cgi fcgi
RUN apk add php-pdo php-pdo_pgsql php-soap php-xmlrpc php-posix php-mcrypt php-gettext php-ldap php-ctype php-dom
RUN rm -rf /var/cache/apk/*
CMD /bin/ash
