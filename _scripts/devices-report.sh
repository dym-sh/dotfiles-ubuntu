#!/usr/bin/zsh

echo -e "Subject: server report on $(date -u '+%Y-%m-%d @ %H:%M:%S')\n\n" \
  > ~/devinfo.txt

free -h \
  >> ~/devinfo.txt

df -H \
  >> ~/devinfo.txt

iostat -dx /dev/sd* \
  >> ~/devinfo.txt

cat ~/devinfo.txt \
  | sendmail \
    -v server@dym.sh
