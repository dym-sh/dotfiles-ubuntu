#!/bin/bash

## /Data/Cfg/code
# > clone and open for editing a newly forked git repo

## requires
# - `sudo apt install git`
# - `cargo install sd`

ssh-add ~/.ssh/github-com
ssh-add ~/.ssh/gitlab-com

REPO="$1"
# i.e. `git@github.com:dym-sh/elixir-style-guide.git`

DIR=` echo "$REPO" \
    | sd -f i '(https://|git@)' '' \
    | sd -f i 'github\.com(/|:)?' '' \
    | sd -f i '\.git$' '' \
    | sd -- '([\w\.-]+)/([\w\.-]+)' '$2--$1' \
    | sd -- '([\w\.-]+)/([\w\.-]+)' '$2--$1' \
    | sd -- '([\w\.-]+):([\w\.-]+)' '$2@$1' \
    | sd -- '/' '--' \
    `

cd /Data/Code/
git clone --depth 1 "$REPO" "$DIR"
cd "$DIR"
sublime_text .
