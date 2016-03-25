FROM php:5.6

#Copy shell script to bin folder to make it executable by entrypoint
ADD ci.sh /usr/local/bin

# Run updates, installs, extensions and set timezone
RUN apt-get update && \
    apt-get install -y curl php5-cli git unzip libicu-dev g++ && \
    docker-php-ext-install intl mbstring gettext && \
    pecl install xdebug-beta && \
    docker-php-ext-enable xdebug && \
    echo Europe/Amsterdam | tee /etc/timezone && \
    dpkg-reconfigure --frontend noninteractive tzdata
    
#Set workdir to copy app to
WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT ["/bin/bash", "ci.sh"]
