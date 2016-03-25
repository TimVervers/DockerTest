FROM sjoerdmulder/teamcity-agent

RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    php5-cli \ 
    libicu-dev \
    php5-intl \
    g++ \
    libapache2-mod-php5
    
RUN apt-get install -y php5-gettext
RUN pecl install xdebug-beta
