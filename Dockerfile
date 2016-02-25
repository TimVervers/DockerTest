FROM php:5.6-cli

#Copy codebase
#s + f

COPY . /usr/src/myapp

COPY ci.sh /usr/local/bin

WORKDIR /usr/src/myapp

ENTRYPOINT /bin/bash "ci.sh"
