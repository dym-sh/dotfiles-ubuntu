#!/bin/bash

systemctl stop pleroma

sudo -Hu postgres pg_dump \
     -d pleroma \
     --format=custom \
     -f "/opt/backup/pleroma_$(date '+%Y%m%d').pgdump"

cd /opt/pleroma/
git pull
chown -R pleroma:pleroma /opt/pleroma/
sudo -Hu pleroma mix deps.get
sudo -Hu pleroma MIX_ENV=prod mix ecto.migrate

systemctl start pleroma
