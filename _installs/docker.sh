#!/usr/bin/zsh

# remove old versions
sudo apt-get remove -y \
  docker docker-engine \
  docker.io containerd runc


# install surrounding necessities
sudo apt-get update -y

sudo apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release


# docker.com key file
curl -fsSL 'https://download.docker.com/linux/ubuntu/gpg' \
  | sudo gpg --dearmor -o \
    '/usr/share/keyrings/docker-archive-keyring.gpg'


# the `lsb_release` prints linux-mint's codename
# of which docker has no idea, so
U='UBUNTU_CODENAME='
DISTRO=`cat '/etc/os-release' | grep "$U"`
if [ ! -z "$DISTRO" ]; then
  DISTRO="${DISTRO/$U/}"
else
  DISTRO=`lsb_release -cs`
fi
echo "DISTRO: '$DISTRO'"


# add docker apt
echo "
deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] \
https://download.docker.com/linux/ubuntu \
$DISTRO stable \
" | sudo tee /etc/apt/sources.list.d/docker.list


# update sources
sudo apt update -y

# check avaliable versions
apt-cache madison docker-ce

# install docker
sudo apt install -y \
  docker-ce docker-ce-cli containerd.io
