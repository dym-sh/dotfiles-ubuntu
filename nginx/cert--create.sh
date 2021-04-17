letsencrypt certonly \
  --standalone \
  --agree-tos \
  --renew-by-default \
  --rsa-key-size 4096 \
  --email cert+dym.sh@dym.sh \
  -d dym.sh -d www.dym.sh

letsencrypt certonly \
  --standalone \
  --agree-tos \
  --renew-by-default \
  --rsa-key-size 4096 \
  --email cert+source.garden@dym.sh \
  -d source.garden -d www.source.garden

letsencrypt certonly \
  --standalone \
  --agree-tos \
  --renew-by-default \
  --rsa-key-size 4096 \
  --email cert+ui.observer@dym.sh \
  -d ui.observer -d www.ui.observer

letsencrypt certonly \
  --standalone \
  --agree-tos \
  --renew-by-default \
  --rsa-key-size 4096 \
  --email cert+grid.lol@dym.sh \
  -d grid.lol -d www.grid.lol

letsencrypt certonly \
  --standalone \
  --agree-tos \
  --renew-by-default \
  --rsa-key-size 4096 \
  --email cert+comics.place@dym.sh \
  -d comics.place -d www.comics.place
