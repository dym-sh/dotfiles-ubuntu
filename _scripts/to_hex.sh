#!/bin/bash

# convert base10 to hexadecimal

# #TODO
# - whitespace-separated arguments to corresponding array of values
#   (exluding -f/--flags)
# - multiple convert arguments to acco
#   (i.e. "0 255 204" to "00 FF CC")


DEC="$1"
HEX=`echo "obase=16; ibase=10; $DEC" \
  | bc
  `

if [[ $@ =~ '-v' ]]; then
  echo "DEC: '$DEC'
HEX: '$HEX'
"
else
  echo "$HEX"
fi
