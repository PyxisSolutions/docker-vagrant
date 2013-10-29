#!/usr/bin/env bash

# all the commands here run as the root user

export DEBIAN_FRONTEND=noninteractive

# setup docker
apt-get update
apt-get -y install linux-image-generic-lts-raring linux-headers-generic-lts-raring

# Add the Docker repository key to your local keychain
wget -qO- https://get.docker.io/gpg | apt-key add -

# Add the Docker repository to your apt sources list.
echo 'deb http://get.docker.io/ubuntu docker main' > /etc/apt/sources.list.d/docker.list

# Install, you will see another warning that the package cannot be authenticated.
apt-get update
apt-get -y install lxc-docker

docker pull ubuntu:12.04

shutdown -r now
