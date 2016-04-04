## Installation

Prerequisites:
- Docker Toolbox (https://www.docker.com/products/docker-toolbox)

## Usage

First get the latest images by pulling them into your local repository.

Open Docker Quickstart Terminal and make sure that you have your forked branch cloned to your desktop.

Find the root map of your project (for example) 
- ~/Development/php-project/

Create an .netrc file in ~/ (You can change the path of the .netrc file, but then you also need to change that in the docker run command)

- echo "machine github.com login {GITHUB_USERNAME} password {GENERATED_TOKEN}" >> ~/.netrc

Run the following docker command
- docker run -it -v ~/.netrc:/root/.netrc -v {RootProjectFolder}:/usr/src/myapp timververs/php
- docker run -it -v ~/.netrc:/root/.netrc -v {RootProjectFolder}:/usr/src/myapp timververs/puppet

## Docker commands
Check all running containers
- docker ps -a

Delete all containers that are currently running
- docker rm -f $(docker ps -a -q)

Delete all images with the tag "<none>"
- docker rmi -f $(docker images | grep "<none>"

Build image
- docker build -t php:5.6-cli .

Run a container in "daemon" mode
- docker run -d -v ~/.netrc:/root/.netrc -v {RootProjectFolder}:/usr/src/myapp timververs/php

Remove a container after it's done 
- docker run --rm v ~/.netrc:/root/.netrc -v {RootProjectFolder}:/usr/src/myapp timververs/php

Attach to a docker container that is running
- docker exec -it [docker_id] /bin/bash

