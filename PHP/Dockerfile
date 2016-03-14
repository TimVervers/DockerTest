FROM php:5.6

#Copy shell script to bin folder to make it executable by entrypoint
COPY ci.sh /usr/local/bin

# Install git, php composer
RUN apt-get update \
    && apt-get install -y \
    curl php5-cli git \
    unzip 
    
#Define workdir
WORKDIR /usr/src/myapp

# Install composer and codesniffer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer install --prefer-source

#Run ci.sh
ENTRYPOINT /bin/bash "ci.sh"
