FROM php:5.6

#Copy shell script to bin folder to make it executable by entrypoint
COPY ci.sh /usr/local/bin

# Apt-get update, apt-get install, git, unzip, libicu-dev, g++ and php extension mbstring, gettext and intl
RUN apt-get update && \
    apt-get install -y curl php5-cli git unzip libicu-dev g++ && \
    docker-php-ext-install mbstring gettext intl

WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT ["/bin/bash", "ci.sh"]
