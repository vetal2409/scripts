#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C "vetal.sydo@gmail.com" \
    && eval "$(ssh-agent -s)" \
    && ssh-add ~/.ssh/id_rsa \
    && xclip -sel clip < ~/.ssh/id_rsa.pub \
    && echo "Key for user \"$USER\" is copied ti the memory!"