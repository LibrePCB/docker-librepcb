# LibrePCB Docker Image

[![Travis Build Status](https://travis-ci.org/LibrePCB/docker-librepcb.svg?branch=master)](https://travis-ci.org/LibrePCB/docker-librepcb)
[![Docker Stars](https://img.shields.io/docker/stars/librepcb/librepcb.svg)](https://hub.docker.com/r/librepcb/librepcb/)
[![Docker Pulls](https://img.shields.io/docker/pulls/librepcb/librepcb.svg)](https://hub.docker.com/r/librepcb/librepcb/)

This repository contains the official [LibrePCB](http://librepcb.org) Docker image which is used for
easily trying out LibrePCB, but also for development and continuous integration.

The Dockerfiles are available at [GitHub](https://github.com/LibrePCB/docker-librepcb) and the built
image is hosted at [Docker Hub](https://hub.docker.com/r/librepcb/librepcb/).


## Available Tags

### `latest`

This tag is made for end users to build and run LibrePCB. In addition to all required dependencies,
it also contains useful development tools like `qtcreator`, `qt5-doc`, `dia` and `vim`.

### `trusty`

Used for continuous integration. Contains all dependencies which are required to build, test and
deploy LibrePCB.


## License

The content in this repository is published under the
[GNU GPLv3](http://www.gnu.org/licenses/gpl-3.0.html) license.
