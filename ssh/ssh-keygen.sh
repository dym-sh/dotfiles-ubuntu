#!/bin/bash

NEW_SSH_EMAIL="$1"

[ -z "$NEW_SSH_EMAIL" ] \
  && NEW_SSH_EMAIL="ssl_$(date +\%Y\%m\%d\%H\%M)"

ssh-keygen \
  -t rsa -b 4096 \
  -C "$NEW_SSH_EMAIL@dym.sh" \
  -f ~/.ssh/$NEW_SSH_EMAIL

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/$NEW_SSH_EMAIL
