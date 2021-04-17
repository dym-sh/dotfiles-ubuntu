#!/usr/bin/zsh

# add i3 ppa
/usr/lib/apt/apt-helper download-file \
  https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2021.02.02_all.deb \
  keyring.deb SHA256:cccfb1dd7d6b1b6a137bb96ea5b5eef18a0a4a6df1d6c0c37832025d2edaa710
sudo dpkg -i ./keyring.deb
sudo echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" \
  >> /etc/apt/sources.list.d/sur5r-i3.list


sudo apt update
sudo apt install i3

# install i3
sudo apt install -y \
  i3-wm rofi


# backup current config
mv ~/.config/i3/config \
   ~/.config/i3/config_`date +\%Y\%m\%d\%H\%M`.bak


# link new config
ln -s `pwd`/config \
   ~/.config/i3/


# restart i3
i3-msg restart
