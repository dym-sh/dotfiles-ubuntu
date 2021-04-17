#!/usr/bin/zsh

for f in "$@"
do
  echo "Converting $f ..."
  heif-convert $f "$f-$(date +\%Y-\%m-\%d@\%H-\%M).jpg"
done