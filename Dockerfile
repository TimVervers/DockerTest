FROM php:5.6-cli
COPY . /usr/src/myapp
COPY ci.sh /usr/local/bin
WORKDIR /usr/src/myapp
#CMD [ "ci.sh" ]
#CMD [ "php", "./index.php" ]
