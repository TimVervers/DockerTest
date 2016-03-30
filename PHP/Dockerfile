FROM php:5.6

#Copy shell script to bin folder to make it executable by entrypoint
ADD ci.sh /usr/local/bin

# Run updates, installs and extensions
RUN apt-get update && \
    apt-get install -y curl php5-cli git unzip libicu-dev g++ && \
    docker-php-ext-install -j$(nproc) intl mbstring gettext && \
    pecl install xdebug-beta && \
    docker-php-ext-enable xdebug && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#Install memcache
RUN apt-get update && apt-get install -y \
    libz-dev \
    libmemcached-dev \
    && pecl install memcached \
    && docker-php-ext-enable memcached

# Install gd
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng12-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
    
#Set workdir to copy app to
WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT ["/bin/bash", "ci.sh"]
