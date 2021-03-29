#!/bin/zsh

if [ -f './.hyper' ]; then
  hyp sync ./ `cat ./.hyper` -y
else
	echo 'Create new hyper-drive?'
  hyp sync ./
fi

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
