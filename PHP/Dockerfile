FROM php:5.6-cli

#Set workdir to copy app to
WORKDIR /usr/src/myapp

# Run updates, installs and extensions
RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    unzip \
    libicu-dev \
    libz-dev \
    libmemcached-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng12-dev \
    g++ && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd intl mbstring gettext && \
    pecl install xdebug-beta memcached && \
    docker-php-ext-enable xdebug memcached && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#copy to executable path
ADD buildSteps.sh /usr/local/bin

#Run buildSteps.sh
ENTRYPOINT ["/bin/bash", "buildSteps.sh"]
