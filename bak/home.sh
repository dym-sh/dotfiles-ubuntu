#!/bin/bash
# backup ~/

BAK='/Data/Home'

rsync -rhP --links --size-only --verbose --delete \
  --exclude '**/*.log' \
  --exclude '**/*.part' \
  --exclude '**/*~' \
  --exclude '**/.Trash-1000/' \
  --exclude '**/node_modules/' \
  --exclude '.cabal/' \
  --exclude '.cache/' \
  --exclude '.cargo/' \
  --exclude '.config/Beaker Browser/' \
  --exclude '.config/chromium/' \
  --exclude '.config/discord/' \
  --exclude '.config/transmission/resume/' \
  --exclude '.config/unity3d/' \
  --exclude '.config/xnviewmp/' \
  --exclude '.deno/' \
  --exclude '.electron-gyp/' \
  --exclude '.gnupg/' \
  --exclude '.gphoto/' \
  --exclude '.linuxmint/' \
  --exclude '.local' \
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
  --exclude 'Steam/' \
  ~/ \
  $BAK
  # --exclude Hyperdrive/ \
  # --exclude .hyperdrive/ \
  # --exclude .hyperspace/ \
