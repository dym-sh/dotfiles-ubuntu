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
  -h 'mail.<DOMAIN>.<TLD>' \
  -p 25:25 \
  -p 12080:80 \
  -p 12443:443 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /var/mail/data:/data \
  -t analogic/poste.io

# admin settings
firefox https://mail.<DOMAIN>.<TLD>:12443/admin/install/server


# start poste-io on reboot
mkdir -p ~/scripts/
cp `pwd`/mailserver.sh ~/scripts/

echo "`crontab -l`
@reboot ~/scripts/mailserver.sh" \
  | crontab -


# start poste-io to configure and such
`pwd`/mailserver.sh
