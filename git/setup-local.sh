#!/bin/sh

ssh-copy-id -i ~/.ssh/server_root.pub "root@<SERVER.IP OR DOMAIN.TLD>"
ssh-copy-id -i ~/.ssh/server_www.pub "www@<SERVER.IP OR DOMAIN.TLD>"
ssh-copy-id -i ~/.ssh/server_git.pub "git@<SERVER.IP OR DOMAIN.TLD>"

cd ~/site
git remote add production git@dym.sh:site.git
git push production master
