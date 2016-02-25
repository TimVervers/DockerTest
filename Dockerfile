FROM php:5.6-cli
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
ENTRYPOINT /bin/bash
CMD [ "ci.sh" ]
