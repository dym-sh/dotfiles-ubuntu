#!/bin/sh

apt update -y
apt upgrade -y

echo 'export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"
export LC_TELEPHONE="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_MEASUREMENT="en_US.UTF-8"
export LC_IDENTIFICATION="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_PAPER="en_US.UTF-8"
export LANG="en_US.UTF-8"
' >> /etc/profile
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
source /etc/profile
locale-gen en_US.UTF-8
dpkg-reconfigure locales en_US.UTF-8


apt remove -y \
  python2 python-is-python2

apt install -y \
  git-core python g++ make \
  build-essential curl wget \
  zsh ufw letsencrypt nginx \
  postgresql postgresql-contrib \
  rmlint ffmpeg imagemagick \
  python3
apt install -y \
  python-is-python3

# bat
apt install -y bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# assign hostname
hostname dym.sh
echo dym.sh > /etc/hostname

# no logs
sudo systemctl stop rsyslog.service
sudo systemctl disable rsyslog.service

# git
add-apt-repository ppa:git-core/ppa
apt update
apt install -y git
