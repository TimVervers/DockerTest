FROM php:5.6

#Copy shell script to bin folder to make it executable by entrypoint
COPY ci.sh /usr/local/bin

# Install git, php composer
RUN apt-get update \
    && apt-get install -y \
    curl php5-cli git \
    unzip 
    
#Define workdir
WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT /bin/bash "ci.sh"
