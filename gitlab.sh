# Gitlab

apt install -y \
  apt-transport-https ca-certificates curl \
  software-properties-common gnupg

curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  | apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt update
apt install docker-ce

docker run hello-world

docker pull gitlab/gitlab-ce:latest


docker run --detach \
  --hostname lab.dym.sh \
  --publish 22:22 \
  --publish 80:80 \
  --publish 443:443 \
  --name "gitlab" \
  --restart always \
  --volume /srv/gitlab/config:/etc/gitlab \
  --volume /srv/gitlab/logs:/var/log/gitlab \
  --volume /srv/gitlab/data:/var/opt/gitlab \
  --env GITLAB_OMNIBUS_CONFIG="external_url 'https://lab.dym.sh/';" \
  gitlab/gitlab-ce:latest

