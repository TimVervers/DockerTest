FROM sjoerdmulder/teamcity-agent

RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    php5-cli \ 
    libicu-dev \
    php5-intl \
    libapache2-mod-php5 \
    php5-ldap\ 
    php5-mysql \
    php5-xsl \
    php5-sqlite \
    php5-xmlrpc \
    php5-odbc \
    gettext \
    php5-xdebug \
    php5-curl \
    php5-gd \
    g++ && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
