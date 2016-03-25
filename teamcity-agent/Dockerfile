FROM sjoerdmulder/teamcity-agent

RUN apt-get update && \
    apt-get install -y curl php5-cli git unzip libicu-dev g++ && \
    docker-php-ext-install intl mbstring gettext && \
    pecl install xdebug-beta && \
    docker-php-ext-enable xdebug
