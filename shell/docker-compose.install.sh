# wget https://raw.githubusercontent.com/linianhui/code/master/shell/docker-compose.install.sh
# sudo bash docker.compose.install

set -euxo pipefail

curl -L https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m) \
     -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose --version
