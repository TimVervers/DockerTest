FROM php:5.6-cli
COPY . /usr/src/myapp \
     ci.sh /usr/local/bin
WORKDIR /usr/src/myapp
ENTRYPOINT /bin/bash "ci.sh"
