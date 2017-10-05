FROM php:7.0-apache

RUN apt-get update

RUN apt-get install -y \
  libcurl4-openssl-dev \
  sudo \
  git \
  libxslt-dev \
  mercurial \
  subversion \
  zlib1g-dev \
  graphviz \
  zip \
  libmcrypt-dev \
  libicu-dev \
  g++ \
  libpcre3-dev \
  libgd-dev \
  libfreetype6-dev \
  libgmp-dev

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
  mysqli

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
  && docker-php-ext-install gd \
  && pecl install ds

RUN pecl install xdebug \
  && docker-php-ext-enable xdebug

RUN echo "extension=ds.so" >> /usr/local/etc/php/php.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
