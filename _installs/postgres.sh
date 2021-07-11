#!/bin/bash

# Postgres

# the `lsb_release` prints linux-mint's codename
# of which pg has no idea, so
U='UBUNTU_CODENAME='
DISTRO=`cat '/etc/os-release' | grep "$U"`
if [ ! -z "$DISTRO" ]; then
  DISTRO="${DISTRO/$U/}"
else
  DISTRO=`lsb_release -cs`
fi
echo "DISTRO: '$DISTRO'"


SRC="deb http://apt.postgresql.org/pub/repos/apt $DISTRO-pgdg main"
sudo sh -c \
  "echo '$SRC' > /etc/apt/sources.list.d/pgdg.list"

wget --quiet -O - 'https://www.postgresql.org/media/keys/ACCC4CF8.asc' \
  | sudo apt-key add -

sudo apt update -y
sudo apt install -y \
  postgresql


psql --version

sudo systemctl start \
  postgresql@13-main
