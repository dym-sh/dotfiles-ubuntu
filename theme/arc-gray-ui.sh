# gray GTK theme
sudo apt install -y \
  meson sassc inkscape

python3 -m pip install meson
python3 -m pip install ninja

git clone https://github.com/dym-sh/arc-grey-theme --depth 1

cd arc-grey-theme

./autogen.sh --prefix=/usr --disable-light --disable-darker
sudo make install
