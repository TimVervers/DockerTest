FROM centos:7

#Set workdir to copy app to
WORKDIR /usr/src/myapp

# Install ruby, puppet and all depencies based on lock files
RUN yum install -y ruby-devel rubygems git gcc make && \
    gem install bundler 
    
ADD buildSteps.sh /usr/src/myapp

#Run buildSteps.sh
ENTRYPOINT ["/bin/bash", "usr/src/myapp/buildSteps.sh"]
