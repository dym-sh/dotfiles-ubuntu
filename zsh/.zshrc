#!/usr/bin/zsh

ZSH=~/.oh-my-zsh
ZSH_THEME="lambda"
CASE_SENSITIVE="false"
DISABLE_LS_COLORS="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=( git )
source ~/.zprofile
source $ZSH/oh-my-zsh.sh
source /Cfg/zsh/aliases.sh
source /Cfg/zsh/functions.sh

# oh-my-zsh newline after promt for the theme lambda
PROMPT='> %~ $(git_prompt_info)%{$reset_color%}
λ '
