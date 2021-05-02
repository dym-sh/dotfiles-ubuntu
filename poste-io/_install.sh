#!/usr/bin/zsh

# install docker
sudo apt install -y \
  apt-transport-https ca-certificates \
  gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  | apt-key add -

sudo apt-key fingerprint \
  0EBFCD88

sudo add-apt-repository -y \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

sudo apt update -y
sudo apt install -y \
  docker-ce docker-ce-cli containerd.io


# start poste-io now to configure and such
`pwd`/@reboot.sh

# admin settings
firefox https://mail.<DOMAIN>.<TLD>:12443/admin/install/server


# start poste-io on reboot
mkdir -p '/home/scripts/'
cp `pwd`/@reboot.sh '/home/scripts/mailserver.sh'

echo "`crontab -l`
@reboot /home/scripts/mailserver.sh" \
  | crontab -
