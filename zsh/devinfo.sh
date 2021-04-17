#!/usr/bin/zsh

# devices info

free -h

sensors

sudo hddtemp SATA:/dev/sda
sudo hddtemp SATA:/dev/sdb
sudo hddtemp SATA:/dev/sdc
sudo hddtemp SATA:/dev/sdd


# hdd details
iostat -dx /dev/sd*
