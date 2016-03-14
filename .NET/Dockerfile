FROM microsoft/aspnet:latest

#Copy shell script to bin folder to make it executable by entrypoint
COPY initial.sh /usr/local/bin

#Define workdir
WORKDIR /usr/src/myapp

#Run ci.sh
ENTRYPOINT /bin/bash "initial.sh"
