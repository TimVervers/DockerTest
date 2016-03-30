FROM php:5.6

#Copy shell script to bin folder to make it executable by entrypoint
ADD ci.sh /usr/local/bin

# Run updates, installs, extensions
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    php5-cli \ 
    php5-intl \
    libapache2-mod-php5 \
    libicu-dev \
    libevent-dev \
    php5-imagick \
    php5-mysqlnd \
    php5-xsl \
    php5-sqlite \
    php5-redis \
    gettext \
    php5-xdebug \
    php5-curl \
    php5-gd \
    g++ && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
    
#Set workdir to copy app to
WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT ["/bin/bash", "ci.sh"]
