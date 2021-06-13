#!/usr/bin/zsh

# Firefox Nightly
sudo add-apt-repository -y \
  ppa:ubuntu-mozilla-daily/ppa

sudo apt update -y
sudo apt install -y \
  firefox-trunk


USER=`cat  ~/.mozilla/firefox/profiles.ini \
    | grep  -E  'Default=.{2,}$' \
    | grep  -oE  '[a-zA-Z0-9_\.\-]{2,}$' \
    `
echo "Firefox USER: '$USER'"


# link prefs
ln  -s  `pwd`/prefs.js \
  ~/.mozilla/firefox/$USER/ \
  #  --force


# link userChrome
mkdir  -p  ~/.mozilla/firefox/$USER/chrome/
ln  -s  `pwd`/userChrome.css \
  ~/.mozilla/firefox/$USER/chrome/ \
  #  --force

# link userContent
ln  -s  `pwd`/userContent.css \
  ~/.mozilla/firefox/$USER/chrome/ \
  #  --force