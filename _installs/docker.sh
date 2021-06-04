#!/usr/bin/zsh

# install docker
sudo apt install -y \
  apt-transport-https ca-certificates \
  gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  | sudo gpg --dearmor -o \
  /usr/share/keyrings/docker-archive-keyring.gpg


sudo apt-key fingerprint \
  0EBFCD88

# mint condition
DISTRO=`cat /etc/os-release | grep 'UBUNTU_CODENAME='`
if [ $? ]; then
  DISTRO="${DISTRO/'UBUNTU_CODENAME='/}"
else
  DISTRO=`lsb_release -cs`
fi
echo "$DISTRO"

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] \
   https://download.docker.com/linux/ubuntu \
   $DISTRO stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list


sudo apt-get update -y
sudo apt install -y \
  docker-ce docker-ce-cli containerd.io
