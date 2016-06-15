FROM centos:7

# Set the working directory to /usr/src/myapp
WORKDIR /usr/src/myapp

# Install Ruby, Git, Bundler and all of it's dependencies
RUN yum install -y ruby-devel rubygems git gcc make && \
    gem install bundler 
    
# Copy all the shell files to an executable path    
COPY *.sh /usr/local/bin

# Run inspect.sh as primary proces
ENTRYPOINT ["/bin/bash", "inspect.sh"]
