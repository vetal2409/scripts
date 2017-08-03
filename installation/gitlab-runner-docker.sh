#!/usr/bin/env bash

docker network create gitlab-runner-net

docker run -d \
  --name gitlab-dind \
  --privileged \
  --restart always \
  --network gitlab-runner-net \
  -v /var/lib/docker \
  docker:17.06.0-ce-dind \
    --storage-driver=overlay2

mkdir -p /srv/gitlab-runner
touch /srv/gitlab-runner/config.toml

docker run -d \
  --name gitlab-runner \
  --restart always \
  --network gitlab-runner-net \
  -v /srv/gitlab-runner/config.toml:/etc/gitlab-runner/config.toml \
  -e DOCKER_HOST=tcp://gitlab-dind:2375 \
  gitlab/gitlab-runner:alpine
