#!/bin/bash

# optimize png and jpg files

calc_reduction()
{
  SIZE_PRE="$1"
  SIZE_POST="$2"
  PERECENT=` echo "scale=2; 100 - (100 * $SIZE_POST / $SIZE_PRE)" | bc `
  RESULT="$(( $SIZE_PRE / 1000 ))-$(( ( $SIZE_PRE - $SIZE_POST ) / 1000 )) kb \
($PERECENT%)
"
  echo "$RESULT"
}

for FILENAME in "$@"
do
  echo "$FILENAME : $FILETYPE"
  FILETYPE=` file -b --mime-type "$FILENAME" `
  SIZE_PRE=` stat "$FILENAME" -c '%s' `

  case "$FILETYPE" in
    'image/png')
      pngquant "$FILENAME" --output "$FILENAME" \
        --quality=100 --force --skip-if-larger --speed 1
      ;;

    'image/jpeg')
      jpegoptim "$FILENAME" -qsftp
      ;;
  esac

  SIZE_POST=` stat "$FILENAME" -c '%s' `
  [ $SIZE_PRE -gt $SIZE_POST ] \
    && echo ` calc_reduction "$SIZE_PRE" "$SIZE_POST" `
done
