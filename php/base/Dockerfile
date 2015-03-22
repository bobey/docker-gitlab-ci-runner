# docker-gitlab-ci-runner-php

FROM bobey/docker-gitlab-ci-runner
MAINTAINER  Olivier Balais "obalais@gmail.com"

ENV PHP_DIR /etc/php5
ENV PATH /root/.phpenv/bin:/root/.phpenv/shims:$PATH

# Install packages required to build PHP
RUN apt-get update -y && \
    apt-get build-dep -y php5 && \
    apt-get install -y libmcrypt-dev libltdl-dev libreadline-dev libc-client2007e-dev libbz2-dev libkrb5-dev \
                       libcurl4-gnutls-dev libfreetype6-dev libgmp-dev libjpeg8-dev libpng12-dev libt1-dev \
                       libmhash-dev libexpat1-dev libicu-dev libtidy-dev re2c lemon libldap2-dev libsasl2-dev \
                       libssh2-1-dev

# Install some usefull packages
RUN apt-get update -y && \
    apt-get install -y git \
                       wget \
                       curl \
                       apache2 \
                       php-pear

# Install a specific bison version
RUN wget -O /tmp/libbison-dev.deb http://launchpadlibrarian.net/140087283/libbison-dev_2.7.1.dfsg-1_amd64.deb && \
    wget -O /tmp/bison_2.7.1.deb http://launchpadlibrarian.net/140087282/bison_2.7.1.dfsg-1_amd64.deb && \
    dpkg -i /tmp/libbison-dev.deb && \
    dpkg -i /tmp/bison_2.7.1.deb && \
    rm -f /tmp/*.deb

RUN git clone https://github.com/CHH/phpenv.git /tmp/phpenv && \
    /tmp/phpenv/bin/phpenv-install.sh && \
    sudo /bin/bash -c "echo 'eval \"\$(phpenv init -)\"' >> /etc/profile.d/phpenv.sh" && \
    echo 'eval "$(phpenv init -)"' >> /root/.bashrc

RUN git clone git://github.com/CHH/php-build.git /root/.phpenv/plugins/php-build
COPY files/configure /root/.phpenv/plugins/php-build/share/php-build/default_configure_options

RUN ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so /usr/lib/libfreetype.so && \
    ln -s /usr/lib/x86_64-linux-gnu/libgmp.so      /usr/lib/libgmp.so && \
    ln -s /usr/lib/x86_64-linux-gnu/libldap.so     /usr/lib/libldap.so && \
    ln -s /usr/include/x86_64-linux-gnu/gmp.h      /usr/include/gmp.h

# Install composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer
