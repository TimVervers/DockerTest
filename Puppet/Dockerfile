FROM centos:7

#Set workdir to copy app to
WORKDIR /usr/src/myapp

# Install ruby, puppet and all depencies based on lock files
RUN yum install -y ruby-devel rubygems git gcc make && \
    gem install bundler 
    
# Copy buildSteps to executable path    
ADD buildSteps.sh /usr/local/bin

#Run buildSteps.sh
ENTRYPOINT ["/bin/bash", "buildSteps.sh"]
