#!/bin/bash

INPUT=$@
echo "\$\@: '$@'"

if [ ! $* ]; then
  echo 'only one argument'
  INPUT=./*
fi

for FILENAME in $INPUT
do
  DOTEXT=`echo "$FILENAME" | grep -oE '\.[a-zA-Z0-9_]+$'`
  echo "FILENAME: '$FILENAME', DOTEXT: '$DOTEXT'"
  mv "$FILENAME" "_$DOTEXT"
done
