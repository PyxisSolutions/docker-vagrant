#!/usr/bin/env bash

# setup docker
sudo apt-get update
sudo apt-get -y install linux-image-generic-lts-raring linux-headers-generic-lts-raring

# Add the Docker repository key to your local keychain
sudo wget -qO- https://get.docker.io/gpg | apt-key add -

# Add the Docker repository to your apt sources list.
sudo echo 'deb http://get.docker.io/ubuntu docker main' > /etc/apt/sources.list.d/docker.list

# Install, you will see another warning that the package cannot be authenticated.
sudo apt-get update
sudo apt-get -y install lxc-docker

sudo docker pull ubuntu:12.04

sudo shutdown -r now
