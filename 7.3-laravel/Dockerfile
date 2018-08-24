FROM falnyr/php:7.3-apache

RUN apt-get update

RUN apt-get install -y \
    libcurl4-openssl-dev \
    libxslt-dev \
    zlib1g-dev \
    libzip-dev \
    libicu-dev \
    libgd-dev

RUN docker-php-ext-install zip \
    && docker-php-ext-install xsl \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install curl \
    && docker-php-ext-install json \
    && docker-php-ext-install bcmath \
    && docker-php-ext-install intl \
    && docker-php-ext-install opcache \
    && docker-php-ext-install gd

COPY ./site.conf /etc/apache2/sites-enabled/site.conf