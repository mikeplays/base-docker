FROM mysql:5.6.40
MAINTAINER mikejw3@gmail.com

ENV MYSQL_ROOT_PASSWORD example
ENV MYSQL_DATABASE example

RUN apt-get update \
    && apt-get install -y wget unzip 

COPY dev.cnf /etc/mysql/conf.d/dev.cnf
