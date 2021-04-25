#!/usr/bin/zsh

# /Cfg/files-bak/home.sh

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
  --exclude '.fonts/' \
  --exclude '.icons/' \
  --exclude '.themes/' \
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
