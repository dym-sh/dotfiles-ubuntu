#!/bin/bash

# Pleroma

# postgres
sudo apt install -y \
	git build-essential cmake \
	postgresql postgresql-contrib

# erlang
wget -P /tmp/ https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb
sudo dpkg -i /tmp/erlang-solutions_2.0_all.deb

sudo apt update -y
sudo apt install -y elixir erlang-dev erlang-nox
mix local.hex
mix local.rebar

# pleroma
sudo useradd -r -s /bin/false -m -d /var/lib/pleroma -U pleroma

# mv /opt/pleroma "/opt/pleroma_`date -u +"%Y%m%d%H%M%S"`"
sudo mkdir -p /opt/pleroma
sudo chown -R pleroma:pleroma /opt/pleroma
sudo -Hu pleroma \
  git clone -b stable --depth 1 \
  https://git.pleroma.social/pleroma/pleroma \
  /opt/pleroma

cd /opt/pleroma

sudo -Hu pleroma mix deps.get
sudo -Hu pleroma mix pleroma.instance gen

#sudo nano config/generated_config.exs

sudo mv config/{generated_config.exs,prod.secret.exs}

# postges::config
sudo -Hu postgres psql -f config/setup_db.psql
sudo -Hu pleroma MIX_ENV=prod mix ecto.migrate
sudo -Hu pleroma MIX_ENV=prod mix phx.server

#ls -A /opt/pleroma/installation/

sudo cp /opt/pleroma/installation/pleroma.service \
  /etc/systemd/system/pleroma.service

sudo systemctl enable --now pleroma.service

# add new user
sudo -Hu pleroma MIX_ENV=prod mix pleroma.user new \
  dym pleroma-install@dym.sh --admin

