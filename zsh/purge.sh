#!/usr/bin/zsh

# purge memory
free -h

echo "clearing memory"
sudo sync
sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'
free -h


# clear logs
sudo du -hs /var/log

echo "clearing /var/log"
sudo find /var/log -type f -delete
sudo du -hs /var/log

rm ~/.xsession-errors*


# relete occasional junk
rm ~/rmlint.*

# empty trash
rm -rf ~/.local/share/Trash

rm -rf /[A-Z]*/.Trash-1000/
