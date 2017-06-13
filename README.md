# PHP-FPM Docker images

This repository contains Docker images for PHP 7 and higher which are based on the [official PHP Docker images](https://hub.docker.com/r/_/php/). These images were created specifically for local development, but they can be used for other purposes too.

These images contain the following additions to the vanilla PHP images:

* Version control packages (git, mercurial, subversion)
* Composer
* PHP extensions:
   * curl
   * gd
   * gettext
   * intl
   * json
   * mcrypt
   * mbstring
   * mysqli
   * opcache
   * pdo_mysql
   * soap
   * xsl
   * zip
   * xdebug
   * ds

## Pull images

The images are stored on [Docker Hub](https://hub.docker.com/r/falnyr/php-ci/). Use `docker pull falnyr/php-ci` to pull these images.

The following tags are available:

* 7.0
* 7.0-no-xdebug
* 7.1
* 7.1-no-xdebug

## Build process

The Dockerfiles are stored in directories for each image version. Docker Hub builds new images automatically when this repository or the PHP base images are updated.

## License

The Dockerfiles are licensed under the MIT license, see LICENSE for details.
