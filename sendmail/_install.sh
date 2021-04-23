#!/usr/bin/zsh


# congig
mkdir -p '/home/scripts/'
cp `pwd`/@reboot.sh '/home/scripts/sendmail.sh'

# on reboot
echo "`crontab -l`
@reboot /home/scripts/sendmail.sh" \
  | crontab -


# make sure it can create temporarary lock files
chmod 0777 /tmp
chmod +t /tmp


# test now
/home/scripts/sendmail.sh
