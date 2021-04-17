#!/bin/bash

## backup
cp -R /opt/pleroma/uploads/ \
      "/opt/backup/pleroma_$(date '+%Y%m%d')/uploads"

sudo -Hu postgres pg_dump \
     -d pleroma \
     --format=custom \
     -f "/opt/backup/pleroma_$(date '+%Y%m%d').pgdump"


mv /opt/pleroma "/opt/pleroma_`date -u +"%Y%m%d%H%M%S"`"
mkdir -p /opt/pleroma
chown -R pleroma:pleroma /opt/pleroma
sudo -Hu pleroma \
  git clone -b stable --depth 1 \
  https://git.pleroma.social/pleroma/pleroma \
  /opt/pleroma

cd /opt/pleroma

sudo -Hu pleroma mix deps.get
sudo -Hu pleroma mix pleroma.instance gen

# sudo mv config/{generated_config.exs,prod.secret.exs}

sudo -Hu postgres psql -f config/setup_db.psql
sudo -Hu pleroma MIX_ENV=prod mix ecto.migrate
sudo -Hu pleroma MIX_ENV=prod mix phx.server
