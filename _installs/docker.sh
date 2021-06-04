#!/usr/bin/zsh

# install docker
sudo apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  | sudo gpg --dearmor -o \
  /usr/share/keyrings/docker-archive-keyring.gpg


# the `lsb_release` prints linux-mint's codename
# of which docker has no idea

DISTRO=`cat /etc/os-release | grep 'UBUNTU_CODENAME='`
if [ ! -z "$DISTRO" ]; then
  DISTRO="${DISTRO/'UBUNTU_CODENAME='/}"
else
  DISTRO=`lsb_release -cs`
fi
echo "$DISTRO"

echo "
deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] \
https://download.docker.com/linux/ubuntu \
$DISTRO stable \
" | sudo tee /etc/apt/sources.list.d/docker.list


sudo apt-get update -y
sudo apt install -y \
  docker-ce docker-ce-cli containerd.io
