set -x

curl -L https://github.com/docker/machine/releases/download/v0.16.1/docker-machine-$(uname -s)-$(uname -m) \
     -o /usr/local/bin/docker-machine

chmod +x /usr/local/bin/docker-machine

docker-machine --version