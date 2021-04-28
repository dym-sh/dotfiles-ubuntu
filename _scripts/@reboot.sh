#!/usr/bin/zsh


# install sendmail
sudo apt install -y \
  sendmail


# copy device-report script
cp `pwd`/devices-report.sh \
  ~/scripts/devices-report.sh


# send daily reports
echo "`crontab -l`
0 6 * * * ~/scripts/devices-report.sh" \
  | crontab -
