FROM sjoerdmulder/teamcity-agent

ADD docker-php-ext-* /usr/local/bin/

RUN apt-get update && apt-get install -y \
    curl 
    git 
    unzip 
    php5-cli 
    libicu-dev 
    g++
    
RUN docker-php-ext-install intl mbstring gettext
RUN pecl install xdebug-beta
RUN docker-php-ext-enable xdebug
