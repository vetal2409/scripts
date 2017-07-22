#!/usr/bin/env bash

# SET UP THE REPOSITORY
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


# INSTALL DOCKER CE
sudo apt-get update

sudo apt-get install -y docker-ce


# Manage Docker as a non-root user
sudo usermod -aG docker $USER