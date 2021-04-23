#!/usr/bin/zsh


# bak $HOME to Data
rsync -rhP --links --size-only --verbose --delete \
  --exclude '**/*.log' \
  --exclude '**/*.part' \
  --exclude '**/*~' \
  --exclude '**/.Trash-1000/' \
  --exclude '**/node_modules/' \
  --exclude '.local' \
  --exclude '.ssh' \
  --exclude '.cabal/' \
  --exclude '.cache/' \
  --exclude '.cargo/' \
  --exclude '.config/' \
  --exclude '.deno/' \
  --exclude '.electron-gyp/' \
  --exclude '.gnupg/' \
  --exclude '.gphoto/' \
  --exclude '.linuxmint/' \
  --exclude '.mozilla/' \
  --exclude '.npm/' \
  --exclude '.nv/' \
  --exclude '.oh-my-zsh/' \
  --exclude '.pipupgrade/' \
  --exclude '.pki/' \
  --exclude '.pulse-cookie' \
  --exclude '.rustup/' \
  --exclude '.steam*' \
  --exclude '.wget-hsts' \
  --exclude '.Xauthority' \
  --exclude 'go/' \
  --exclude 'snap/' \
  --exclude 'Steam/' \
  ~/ \
  '/Data/Home'
  # --exclude Hyperdrive/ \
  # --exclude .hyperdrive/ \
  # --exclude .hyperspace/ \


# bak apps from Sys to Data
rsync -rhP --links --size-only --verbose --delete \
  '/usr/local/bin/' \
  '/Data/Apps/_bin'


# bak Data
BAK='/media/dym/baracuda'

udisksctl mount -b '/dev/disk/by-label/baracuda'

restic backup '/Data/.privat' \
  -p '/Data/.privat/restic/p.txt' \
  -r "$BAK/.privat"

rsync -rhP --links --size-only --verbose --delete \
  --exclude '**/.Trash-1000/' \
  --exclude '**/__sapper__/' \
  --exclude '**/node_modules/' \
  --exclude '**/target/' \
  --exclude '.privat/' \
  '/Data/' \
  "$BAK"

udisksctl unmount -b '/dev/disk/by-label/baracuda'
