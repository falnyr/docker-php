FROM php:7.0-apache

RUN apt-get update

RUN apt-get install -y \
  libcurl4-openssl-dev \
  sudo \
  git \
  vim \
  libxslt-dev \
  zlib1g-dev \
  graphviz \
  zip \
  libmcrypt-dev \
  libicu-dev \
  g++ \
  libpcre3-dev \
  libgd-dev \
  libfreetype6-dev \
  libgmp-dev \
  mysql-client \
  libgeoip-dev

RUN apt-get clean

RUN docker-php-ext-install \
  soap \
  gmp \
  dom \
  bcmath \
  zip \
  xsl \
  mcrypt \
  mbstring \
  gettext \
  curl \
  pdo_mysql \
  json \
  intl \
  opcache \
  mysqli \
  calendar

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
  && docker-php-ext-install gd

RUN pecl install xdebug \
  && docker-php-ext-enable xdebug \
  && { \
     		echo "xdebug.remote_enable=On"; \
     		echo "xdebug.remote_connect_back=On"; \
     	} | tee -a /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN pecl install geoip-1.1.1 \
	&& echo "extension=geoip.so" > /usr/local/etc/php/conf.d/ext-geoip.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN a2enmod rewrite