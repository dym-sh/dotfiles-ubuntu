#!/bin/sh

PROJ="$1"

# git
adduser git
mkdir '/home/git/.ssh'
touch '/home/git/.ssh/authorized_keys'

# new repo
git init --bare "/lab/$PROJ"
mkdir -p "/site/$PROJ/"
git clone "/lab/$PROJ" "/site/$PROJ"
# ln -s "/lab/$PROJ" "/site/$PROJ/.git"

# post-push resolving
touch "/lab/$PROJ/hooks/post-update"
chmod +x "/lab/$PROJ/hooks/post-update"

# cd '/lab/$PROJ/'
# exec git-update-server-info
echo "#!/bin/sh
cd '/site/$PROJ/' || exit
unset GIT_DIR
git pull
exec git-update-server-info
"
>> "/lab/$PROJ/hooks/post-update"


# make sure of control rights
chown -R git:git '/home/git/'
chown -R git:git '/lab/'


# adduser www
# usermod -aG www-data www
usermod -aG www-data git
chown -R git:www-data "/site/$PROJ"
# mkdir "/site/$PROJ/uploads"
# touch "/site/$PROJ/nohup.out"
# touch "/site/$PROJ/log.txt"

# starting scripts
# chown -R www:www-data "/site/$PROJ"
# su - www -c 'cd "/site/$PROJ && ./start'"
# echo '@reboot su - www -c "cd "/site/$PROJ && ./start"' \"
#      >> /etc/crontab
