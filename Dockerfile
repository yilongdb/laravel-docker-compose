FROM php:7.2-fpm

MAINTAINER TKing <2974105336@qq.com>

RUN apt-get update && \
    docker-php-ext-install bcmath && \
    docker-php-ext-install pdo_mysql && \
    mv /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini && \
    curl -sS https://getcomposer.org/installer | \
    php  -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /var/www

EXPOSE 80 443