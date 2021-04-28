#!/usr/bin/zsh

# install docker
sudo apt install -y \
  apt-transport-https ca-certificates \
  gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  | apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

sudo apt update -y
sudo apt install -y \
  docker-ce docker-ce-cli containerd.io


# initial setup
docker pull analogic/poste.io
docker run \
  --detach \
  --restart always \
  --ip4 '<IPv4>' \
  --ip6 '<IPv6>' \
  --name 'mailserver' \
  --hostname 'mail.<DOMAIN>.<TLD>' \
  --publish 25:25 \
  --publish 465:465 \
  --publish 587:587 \
  --publish 993:993 \
  --publish 12080:80 \
  --publish 12443:443 \
  --volume /etc/localtime:/etc/localtime:ro \
  --volume /var/mail/data:/data \
  --tty analogic/poste.io

# admin settings
firefox https://mail.<DOMAIN>.<TLD>/admin/install/server


# start poste-io on reboot
mkdir -p '/home/scripts/'
cp `pwd`/@reboot.sh '/home/scripts/mailserver.sh'

echo "`crontab -l`
@reboot /home/scripts/mailserver.sh" \
  | crontab -


# start poste-io now to configure and such
`pwd`/mailserver.sh
