#!/usr/bin/zsh

# add i3 ppa
/usr/lib/apt/apt-helper download-file \
  https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2021.02.02_all.deb \
  keyring.deb SHA256:cccfb1dd7d6b1b6a137bb96ea5b5eef18a0a4a6df1d6c0c37832025d2edaa710
sudo dpkg -i ./keyring.deb
rm ./keyring.deb

echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" \
  | sudo tee /etc/apt/sources.list.d/sur5r-i3.list

sudo apt update -y


# install i3 + rofi
sudo apt install -y \
  i3 rofi


# backup current config
mv ~/.config/i3/config \
   ~/.config/i3/config_`date '+%Y-%m-%d@%H-%M'`.bak

# link new config
mkdir -p ~/.config/i3/
ln -s `pwd`/config \
   ~/.config/i3/


# restart i3
i3-msg restart
