#!/bin/bash

# Postgres
VER='focal' # `lsb_release -cs` of Ubuntu 20.04
SRC="deb http://apt.postgresql.org/pub/repos/apt $VER-pgdg main"
sudo sh -c \
  "echo '$SRC' > /etc/apt/sources.list.d/pgdg.list"

wget --quiet -O - 'https://www.postgresql.org/media/keys/ACCC4CF8.asc' \
  | sudo apt-key add -

sudo apt update -y
sudo apt install -y \
  postgresql
