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

Open Docker Quickstart Terminal
- docker pull timververs/teamcity-agent:php
- docker pull timververs/teamcity-agent:net

Check this by typing
- docker images
- 
Make sure you don't have active containers by running
- docker ps -a

Verwijder all containers met
- docker rm $(docker ps -a -q)

