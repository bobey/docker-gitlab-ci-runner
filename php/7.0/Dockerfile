# docker-gitlab-ci-runner-php7

FROM bobey/docker-gitlab-ci-runner-php
MAINTAINER  Olivier Balais "obalais@gmail.com"

ENV PHP_VERSION 7.0.4

COPY files/ci-runner.ini /root/.phpenv/versions/$PHP_VERSION/etc/conf.d/ci-runner.ini

RUN phpenv install $PHP_VERSION \
    phpenv rehash && \
    phpenv global $PHP_VERSION

RUN DEBIAN_FRONTEND=noninteractive apt-get remove -y --purge php*

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    php7.0-cli \
    php7.0-common \
    php7.0-dev \
    php7.0-json \
    php7.0-opcache \
    php7.0-mysql \
    php7.0-phpdbg \
    php7.0-mbstring \
    php7.0-gd \
    php7.0-imap \
    php7.0-ldap \
    php7.0-pgsql \
    php7.0-sqlite \
    php7.0-pdo \
    php7.0-pspell \
    php7.0-recode \
    php7.0-tidy \
    php7.0-intl \
    php7.0-curl \
    php7.0-zip \
    php7.0-xml \
    php-mongodb \
    php-redis \
    php-memcache \
    php-xdebug