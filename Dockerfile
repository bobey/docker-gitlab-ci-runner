# docker-gitlab-ci-runner-php55

FROM gitlabhq/gitlab-ci-runner
MAINTAINER  Olivier Balais "obalais@gmail.com"

# Install packages required to test a basic PHP project before the test run starts
RUN apt-get install -y \
    git \
    wget \
    curl \
    php5 \
    php5-curl \
    php5-mysql \
    libssh2-php

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
