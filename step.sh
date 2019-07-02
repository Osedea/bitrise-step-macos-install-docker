#!/bin/bash
set -ex

brew cask install docker-toolbox
docker-machine create --driver "virtualbox" --virtualbox-no-vtx-check default 

# Need to be run in each script requiring Docker
eval $(docker-machine env default)
docker version
