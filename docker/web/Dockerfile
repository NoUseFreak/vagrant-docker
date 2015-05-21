FROM php:apache

RUN pecl install redis \
    && echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini

RUN usermod -u 1000 www-data