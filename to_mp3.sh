#!/usr/bin/zsh

# convert to mp3

echo "to mp3: [ $@ ]"
for UNCOMPRESSED in "$@"
do
  MP3=` echo "$UNCOMPRESSED" \
      | sd '\.\w+$' ' [conv].mp3' \
      `
  echo "'$UNCOMPRESSED'"
  echo ">> '$MP3'"

  ffmpeg \
    -i "$UNCOMPRESSED" \
    -codec:a libmp3lame \
    -qscale:a 2 \
    -loglevel quiet \
    -y "$MP3" \
  && \
    rm "$UNCOMPRESSED"
done
