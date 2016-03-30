## Synopsis

This project is a sample of how it's possible to compile and test your code in a development enviornment. Also it should do the exact same on a teamcity-agent.

## Code Example

It's split up in code languages

##### PHP
 Inside there is a Dockerfile which contains the basics to run a PHP project. It calls ci.sh to run composer, code sniffer and phpunit

##### .NET

Inside there is a Dockerfile which contains the basics to run a .NET project (mono linux). It calls initial.sh to run basic echo commands (should be diffrend).

## Installation

Prerequisites:
- Docker Toolbox (https://www.docker.com/products/docker-toolbox)

## Usage

First get the latest images by pulling them into your local repository.

Open Docker Quickstart Terminal and make sure that you have your forked branch cloned to your desktop.

Find the root map of your project (for example) 
- ~/Development/php-project/

Create an .netrc file in ~/ (You can change the path of the .netrc file, but then you also need to change that in the docker run command)
- cat > ~/.netrc <<EOF
- machine github.com
- login {GITHUB_USERNAME}
- password {GENERATED_TOKEN}
- EOF

Run the following docker command
- docker run -it -v ~/:/root -v {RootProjectFolder}:/usr/src/myapp timververs/teamcity-agent:php

## Docker commands
Check all running containers
- docker ps -a

Delete all containers that are currently running
- docker rm -f $(docker ps -a -q)

Delete all images with the tag "<none>"
- docker rmi -f $(docker images | grep "<none>"

Build image
- dockerk build -t teamcityagent:php .

