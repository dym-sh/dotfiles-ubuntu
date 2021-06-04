#!/usr/bin/zsh

# start poste-io now to configure and such
`pwd`/@reboot.sh

# admin settings
firefox https://mail.<DOMAIN>.<TLD>:12443/admin/install/server


# start poste-io on reboot
mkdir -p '/home/scripts/'
cp `pwd`/@reboot.sh '/home/scripts/mailserver.sh'

echo "`crontab -l`
@reboot /home/scripts/mailserver.sh" \
  | crontab -
