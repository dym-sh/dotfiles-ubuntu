#!/bin/bash

# mirroring of all github-(user|org) repos
# use: `gh-user-mirror GH_USER`
# TODO: --(no-)forks, --(no-)update, --sort <types>

## requires
# - `sudo apt install -y curl git`
# - `cargo install sd jql`

MIRRORS='/Data/Code/_github'

GH_USER="$1"
FULL_USER_PATH="$MIRRORS/@$GH_USER"
[ ! -d "$FULL_USER_PATH" ] \
  && mkdir -p "$FULL_USER_PATH"


echo "Mirroring of Github User: '$GH_USER'"

PAGES=` curl --HEAD --silent "https://api.github.com/users/$GH_USER/repos" \
      | grep 'rel="last"' \
      | sd '^.+page=' '' \
      | sd '>; rel="last"[\n\r]+' '' \
      `
if [ -z "$PAGES" ]; then
  PAGES=1
fi

for LISTING_PAGE in `seq 1 1 "$PAGES"`; do

  GH_REPOS=(` curl --silent "https://api.github.com/users/$GH_USER/repos?page=$LISTING_PAGE" \
            | jql -i '.|"name"' \
            | tr ',' ' ' \
            | tr -d '[]"' \
            `)

  echo "Repos on page $LISTING_PAGE of $PAGES: '${GH_REPOS[@]}'"

  for REPO in "${GH_REPOS[@]}"; do
    if [ -d "$FULL_USER_PATH/$REPO/.git" ]; then
      echo "Updating repo: '$REPO'"
      cd "$FULL_USER_PATH/$REPO"
      git reset --hard HEAD
      git clean -f -d
      git pull --depth 1
    else
      echo "Cloning repo: '$REPO'"
      git clone --quiet --depth 1 \
        "https://github.com/$GH_USER/$REPO.git" \
        "$FULL_USER_PATH/$REPO"
    fi
  done

done
