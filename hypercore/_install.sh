#!/usr/bin/zsh


# install hypercore
npm i -g @hyperspace/cli


# start daemon now
hyp daemon start

# also start daemon on reboot
echo "`crontab -l`
@reboot /usr/local/bin/hyp daemon start
" | crontab -


# link hyp-ignore
ln -s `pwd`/.hypignore ~/ # --force


# link hyperspace
ln -s '/Data/.privat/hyperspace' ~/.hyperspace # --force
