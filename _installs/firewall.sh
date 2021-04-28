#!/bin/sh

# firewall
# http
ufw allow 80
# http(ssl)
ufw allow 443
# smtp:incoming
ufw allow 25
# smtp:sending(STARTTLS)
#ufw allow 465
# smtp:sending(ssl)
ufw allow 587
# pop3
#ufw allow 110
# imap
#ufw allow 143
# imap(ssl)
ufw allow 993

# ssh
ufw limit ssh
ufw deny 22
ufw allow 567
ufw enable
