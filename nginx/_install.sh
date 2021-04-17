#!/usr/bin/zsh

mkdir -p /etc/nginx/ssl/
openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
  -keyout /etc/nginx/ssl/nginx.key \
  -out /etc/nginx/ssl/nginx.crt

openssl dhparam -out /etc/nginx/dhparam.pem 4096


# letsencrypt
./cert--create.sh

echo '
# letsencrypt renews
1 1 1 * * letsencrypt renew --nginx --quiet
@reboot letsencrypt renew --nginx --quiet
' >> /etc/crontab

systemctl restart cron.service
