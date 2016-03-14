FROM microsoft/aspnet:latest

#Copy shell script to bin folder to make it executable by entrypoint
COPY initial.sh /usr/local/bin

#Define workdir
WORKDIR /usr/src/myapp

#Expose port 5004 to 80 on the daemon
EXPOSE 5004

#Run initial.sh
ENTRYPOINT /bin/bash "initial.sh"
