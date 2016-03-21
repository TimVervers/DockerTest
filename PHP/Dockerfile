FROM php:5.6

#Copy shell script to bin folder to make it executable by entrypoint
COPY ci.sh /usr/local/bin

# Apt-get update, apt-get install, git, unzip, libicu-dev, g++ and php extension mbstring, gettext and intl, xdebug with pecl
RUN apt-get update && \
    apt-get install -y curl php5-cli git unzip libicu-dev g++ && \
    docker-php-ext-install mbstring gettext intl && \
    pecl install xdebug-beta && \
    docker-php-ext-enable xdebug
    
#set timezone to amsterdam
RUN echo Europe/Amsterdam | sudo tee /etc/timezone && sudo dpkg-reconfigure --frontend noninteractive tzdata

#Set workdir to copy app to
WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT ["/bin/bash", "ci.sh"]
