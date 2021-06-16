#!/usr/bin/zsh

# install python
sudo apt install -y \
  python3 \
  python-is-python3 \
  python3-pip

sudo ln -s /usr/bin/pip3 \
      /usr/local/bin/pip


# yt-dl
pip install youtube_dl
