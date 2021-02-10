#!/usr/bin/zsh

# funtions

str_split() {
  echo "$2" | sd "$1" '\n'
}
