#!/bin/bash

# clear port 25 for landing
# lsof -i :25
pkill sendmail

docker stop mailserver

docker rm "$(docker ps -a -q)"

# docker pull analogic/poste.io

docker run \
    -p 25:25 \
    -p 12443:443 \
    -p 12080:80 \
    -v /etc/localtime:/etc/localtime:ro \
    -v /var/mail/data:/data \
    --name "mailserver" \
    --hostname "mail.dym.sh" \
    -t analogic/poste.io \
 2>&1 &
