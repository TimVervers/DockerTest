FROM sjoerdmulder/teamcity-agent

ADD docker-php-ext-install /usr/local/bin/ 

RUN chmod +x /usr/local/bin/docker-php-ext-install

RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    php5-cli \ 
    libicu-dev \
    g++
    
RUN /usr/local/bin/docker-php-ext-install intl mbstring gettext
RUN pecl install xdebug-beta
RUN docker-php-ext-enable xdebug
