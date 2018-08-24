FROM php:7.2-apache

RUN apt-get update && apt-get install zip

# composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# apache mod_rewrite
RUN a2enmod rewrite
RUN usermod -u 1000 www-data
