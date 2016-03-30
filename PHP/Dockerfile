FROM php:5.6

#Copy shell script to bin folder to make it executable by entrypoint
ADD ci.sh /usr/local/bin

# Run updates, installs, extensions and set timezone
RUN apt-get update && apt-get install -y \
    curl \
    php5-cli \
    git \
    unzip \
    libicu-dev \
    php5-intl \
    libapache2-mod-php5 \
    gettext \
    php5-xdebug \
    g++ && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
    
#Set workdir to copy app to
WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT ["/bin/bash", "ci.sh"]
