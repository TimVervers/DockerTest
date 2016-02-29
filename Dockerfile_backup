FROM php:5.6-cli

#Copy codebase from test project 
# https://github.com/TimVervers/TestProject
COPY . /usr/src/myapp

#Copy shell script to bin folder to make it executable by entrypoint
COPY ci.sh /usr/local/bin

#Define workdir
WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT /bin/bash "ci.sh"
