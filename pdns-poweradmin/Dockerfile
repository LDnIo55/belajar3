FROM php:8.1-apache

LABEL maintainer="andika"
LABEL image="andika/pdns-poweradmin"
LABEL version="v1"

RUN apt-get update && \
    apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev libzip-dev unzip mariadb-client && \
    docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /var/www/html

RUN curl -L https://github.com/poweradmin/poweradmin/archive/refs/tags/v3.4.1.tar.gz | tar xz --strip-components=1

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
