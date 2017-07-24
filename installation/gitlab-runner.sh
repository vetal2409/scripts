#!/usr/bin/env bash

# Installing the Runner https://docs.gitlab.com/runner/install/linux-repository.html#installing-the-runner

# For Debian/Ubuntu
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
sudo apt-get install gitlab-ci-multi-runner
