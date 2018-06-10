FROM php:7.1.2-apache
MAINTAINER mikejw3@gmail.com

RUN apt-get update \
    && apt-get install -y wget unzip mysql-client emacs-nox \
    libmcrypt-dev libpng12-dev libxml2-dev libjpeg-dev memcached libcurl4-openssl-dev \
    && docker-php-ext-configure gd --with-jpeg-dir=/usr \
    && docker-php-ext-install mcrypt gd soap pdo_mysql curl mysqli

RUN apt-get install -y libmemcached11 libmemcachedutil2 build-essential libmemcached-dev libz-dev \
  && pecl install memcached \
  && echo extension=memcached.so >> /usr/local/etc/php/conf.d/memcached.ini \
  && apt-get remove -y build-essential libmemcached-dev libz-dev \
  && apt-get autoremove -y \
  && apt-get clean \
  && rm -rf /tmp/pear


# ENABLE PROXYING
RUN apt-get install -y libapache2-mod-proxy-html
RUN a2enmod proxy_http && a2enmod proxy_wstunnel && /etc/init.d/apache2 restart

COPY 000-default.conf /etc/apache2/sites-available/
RUN a2enmod rewrite && /etc/init.d/apache2 restart

WORKDIR /var/www


