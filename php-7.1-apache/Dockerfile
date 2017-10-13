FROM php:7.1-apache

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
  libgmp-dev \
  mysql-client

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

# geoip
RUN runtimeRequirements="libgeoip-dev" \
	&& apt-get update && apt-get install -y ${runtimeRequirements} \
	&& pecl install geoip-1.1.1 \
	&& echo "extension=geoip.so" > /usr/local/etc/php/conf.d/ext-geoip.ini \
	&& rm -rf /var/lib/apt/lists/*


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN a2enmod rewrite
