FROM php:5.6

#Copy shell script to bin folder to make it executable by entrypoint
COPY ci.sh /usr/local/bin
COPY docker-php-pecl-install /usr/local/bin/

# Install git, php composer
RUN apt-get update \
    && apt-get install -y \
    curl php5-cli git \
    unzip \
    libicu-dev \
    g++
    
# Enable and configure xdebug
RUN docker-php-pecl-install xdebug-2.3.3 uploadprogress-1.0.3.1

#Install PHP Extensions
RUN docker-php-ext-install mbstring gettext intl
    
#Define workdir
WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT ["/bin/bash"]
CMD ["ci.sh"]
