FROM sjoerdmulder/teamcity-agent

RUN apt-get update && \
    apt-get install -y curl php5-cli git unzip libicu-dev g++
    
RUN docker-php-ext-install intl mbstring gettext
RUN pecl install xdebug-beta
RUN docker-php-ext-enable xdebug
