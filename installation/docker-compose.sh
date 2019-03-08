#!/usr/bin/env bash

# Run as sudo user; `sudo -i`
dockerComposeVersion=1.16.1

echo $dockerComposeVersion
curl -L https://github.com/docker/compose/releases/download/$dockerComposeVersion/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version