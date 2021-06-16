#!/usr/bin/zsh

source ~/.profile

ZSH="$HOME/.oh-my-zsh"
ZSH_THEME='lambda'
CASE_SENSITIVE='false'
DISABLE_LS_COLORS='true'
COMPLETION_WAITING_DOTS='true'
HIST_STAMPS='yyyy-mm-dd'

plugins=( git )
source "$ZSH/oh-my-zsh.sh"


# oh-my-zsh newline after promt for the theme lambda
PROMPT='> %~ $(git_prompt_info)%{$reset_color%}
λ '


# aliases
alias bc='bc -l'
alias l='exa -alhg --git --group-directories-first --color-scale -s ext'
alias ll='l -T'
alias ls='ls -AF --group-directories-first'
alias d='du -ch --max-depth=1'
alias md='mkdir'

alias i='sudo apt install -y'
alias un='sudo apt remove -y'

alias subs='youtube-dl --write-auto-sub --sub-lang en'


# funtions
str_split() {
  echo "$2" | sd "$1" '\n'
}
