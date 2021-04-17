# snapd, snapcraft

sudo rm /etc/apt/preferences.d/nosnap.pref

sudo apt update -y

sudo apt install -y \
  snapd


## test

snap install hello-world

hello-world

snap uninstall hello-world
