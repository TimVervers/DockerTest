## Synopsis

This project is a sample of how it's possible to compile and test your code in a development enviornment. Also it should do the exact same on a teamcity-agent.

## Code Example

It's split up in code languages

PHP
---
Inside there is a Dockerfile which contains the basics to run a PHP project. It calls ci.sh to run composer, code sniffer and phpunit

.NET
---
Inside there is a Dockerfile which contains the basics to run a .NET project (mono linux). It calls initial.sh to run basic echo commands (should be diffrend).

## Motivation

A short description of the motivation behind the creation and maintenance of the project. This should explain **why** the project exists.

## Installation

Provide code examples and explanations of how to get the project.

## API Reference

Depending on the size of the project, if it is small and simple enough the reference docs can be added to the README. For medium size to larger projects it is important to at least provide a link to where the API reference docs live.

## Tests

Describe and show how to run the tests with code examples.

## Contributors

Let people know how they can dive into the project, include important links to things like issue trackers, irc, twitter accounts if applicable.

## License

A short snippet describing the license (MIT, Apache, etc.)
