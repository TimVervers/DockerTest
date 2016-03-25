FROM sjoerdmulder/teamcity-agent

RUN php -v
RUN apt-get update && \
RUN apt-get install -y curl git unzip 
RUN apt-get install -y php5-cli 
RUN apt-get install -y libicu-dev g++
    
RUN docker-php-ext-install intl mbstring gettext
RUN pecl install xdebug-beta
RUN docker-php-ext-enable xdebug
