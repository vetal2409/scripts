#!/usr/bin/env bash

# Install composer
sudo apt-get update
sudo curl -sS https://getcomposer.org/installer | sudo php -- --filename=composer --install-dir=/usr/local/bin
