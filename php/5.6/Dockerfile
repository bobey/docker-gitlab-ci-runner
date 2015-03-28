# docker-gitlab-ci-runner-php5.6

FROM bobey/docker-gitlab-ci-runner-php
MAINTAINER  Olivier Balais "obalais@gmail.com"

ENV PHP_VERSION 5.6.6

COPY files/ci-runner.ini /root/.phpenv/versions/$PHP_VERSION/etc/conf.d/ci-runner.ini

RUN phpenv install $PHP_VERSION \
    phpenv rehash && \
    phpenv global $PHP_VERSION

# Install PHP PECL extensions
RUN yes '' | pecl install \
	mongo \
	redis \
	memcache \
	ssh2-0.12 \
	xdebug
