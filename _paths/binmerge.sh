#!/usr/bin/zsh

# own /usr/local
sudo mkdir -p -m 755  '/Apps/bin/'
sudo chown -R  "$USER:$USER"  '/Apps/'


# ~/.local
cp -RT  ~/.local/  '/Apps/'
rm -rf  ~/.local/
ln -s  '/Apps'  ~/.local


# cargo
mkdir -p  ~/.cargo/
cp -RT  ~/.cargo/bin/  '/Apps/'
rm -rf  ~/.cargo/bin
ln -s  '/Apps'  ~/.cargo/bin


# deno
mkdir -p  ~/.deno/
cp -RT  ~/.deno/bin/  '/Apps/'
rm -rf  ~/.deno/bin
ln -s  '/Apps'  ~/.deno/bin


# snap
sudo mkdir -p  '/snap/'
sudo cp -RT  '/snap/bin/'  '/Apps/'
sudo rm -rf  '/snap/bin'
sudo ln -s  '/Apps'  '/snap/bin'


# flutter
mkdir -p  ~/snap/flutter/common/flutter/.pub-cache/
cp -RT  ~/snap/flutter/common/flutter/.pub-cache/bin/  '/Apps/'
rm -rf  ~/snap/flutter/common/flutter/.pub-cache/bin
ln -s  '/Apps'  ~/snap/flutter/common/flutter/.pub-cache/bin


# games
sudo cp -RT  '/usr/games/' '/Apps/bin/'
sudo rm -rf  '/usr/games'
sudo ln -s  '/Apps/bin' '/usr/games'

sudo cp -RT  '/usr/local/games/' '/Apps/bin/'
sudo rm -rf  '/usr/local/games'
sudo ln -s  '/Apps/bin' '/usr/local/games'


# sbin
sudo cp -RT  '/usr/local/sbin/' '/Apps/bin/'
sudo rm -rf  '/usr/local/sbin'
sudo ln -s  '/Apps/bin' '/Apps/sbin'


# rest of local
sudo cp -RT  '/usr/local/' '/Apps/'
sudo rm -rf  '/usr/local'
sudo ln -s  '/Apps/bin' '/usr/local'


# put merged bin into path
echo '
ENV_SUPATH      PATH=/Apps:/Apps/bin:/usr/sbin:/usr/bin
ENV_PATH        PATH=/Apps:/Apps/bin:/usr/sbin:/usr/bin
' | sudo tee -a '/etc/login.defs'

echo 'PATH="/Apps:/Apps/bin:/usr/sbin:/usr/bin"' \
  | sudo tee -a /etc/environment
