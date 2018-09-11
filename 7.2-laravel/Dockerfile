FROM falnyr/php:7.2

RUN addgroup -S app && adduser -S -G app app

RUN apk add zlib-dev \
    libxslt-dev \
    curl-dev \
    icu-dev \
    libjpeg-turbo-dev \
    libpng-dev

RUN docker-php-ext-install zip \
    && docker-php-ext-install xsl \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install curl \
    && docker-php-ext-install json \
    && docker-php-ext-install bcmath \
    && docker-php-ext-install intl \
    && docker-php-ext-install opcache \
    && docker-php-ext-install gd

RUN mkdir -p /app/
WORKDIR /app/