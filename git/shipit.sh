#!/bin/zsh

hyp sync ./ `cat ./.hyper`

ssh-add ~/.ssh/github-com
ssh-add ~/.ssh/gitlab-com
ssh-add ~/.ssh/server_git

COMMIT="$1"
[ -z "$COMMIT" ] \
  && COMMIT="__ $(date '+%Y%m%d@%H%M%S')"

git commit -am "$COMMIT"

git push --all github
git push --all gitlab

git push --all production
