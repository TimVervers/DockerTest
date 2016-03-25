FROM sjoerdmulder/teamcity-agent

RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    php5-cli \ 
    libicu-dev \
    g++
    
RUN apt-get install -y php5-intl 
RUN apt-get install -y mbstring 
RUN apt-get install -y gettext
RUN pecl install xdebug-beta
