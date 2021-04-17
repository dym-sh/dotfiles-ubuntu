#!/usr/bin/zsh


# install hypercore
npm install -g @hyperspace/cli


# start daemon now
hyp daemon start


# also start daemon on reboot
echo "`crontab -l`
@reboot /usr/local/bin/hyp daemon start" \
  | crontab -
