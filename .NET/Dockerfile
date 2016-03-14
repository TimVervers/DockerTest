FROM microsoft/aspnet:latest

#Copy shell script to bin folder to make it executable by entrypoint
#COPY initial.sh /usr/local/bin

#Define workdir
WORKDIR /usr/src/myapp

#Run dnu restore
RUN ["kpm", "restore"]

#EXPOSE port 5004 to the docker daemon
EXPOSE 5004

#run DNX from project.json
ENTRYPOINT ["k", "kestrel"]
