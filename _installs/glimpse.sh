
sudo apt install -y \
  build-essential git python3 python3-pip \
  python3-setuptools python3-wheel ninja-build \
  libgirepository1.0-dev valac

sudo apt build-dep gimp
pip3 install meson
sudo mkdir -p /share/aclocal
