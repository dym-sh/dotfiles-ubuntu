#!/usr/bin/zsh

# clear port 25 for landing
# lsof -i :25
pkill sendmail

# stop and remove old container
docker stop mailserver
docker rm `docker ps -a -q`

# update container
docker pull analogic/poste.io

# start
docker run \
  --detach \
  --restart always \
  --name 'mailserver' \
  --hostname 'mail.dym.sh' \
  --publish 25:25 \
  --publish 465:465 \
  --publish 587:587 \
  --publish 993:993 \
  --publish 12080:80 \
  --publish 12443:443 \
  --volume /etc/localtime:/etc/localtime:ro \
  --volume /var/mail/data:/data \
  --tty analogic/poste.io
