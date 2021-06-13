#!/bin/bash

# convert hexadecimal to base10

# #TODO
# - whitespace-separated arguments to corresponding array of values
#   (exluding -f/--flags)
# - convert hex-colors[with alpha] to rgb[a]()
#   (i.e. "#00FFCC[80]" to "rgba(0, 255, 204[, 0.5])")


HEX=`echo "$1" | tr 'a-z' 'A-Z'`
DEC=`echo "obase=10; ibase=16; $HEX" \
  | bc
  `

if [[ $@ =~ '-v' ]]; then
  echo "HEX: '$HEX'
DEC: '$DEC'
"
else
  echo "$DEC"
fi
