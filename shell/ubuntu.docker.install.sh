# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.docker.install.sh
# sudo bash ubuntu.docker.install.sh

set -x

apt-get remove -y \
        docker \
        docker-engine \
        docker.io

apt-get update -y

apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common

curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

apt-get update -y
apt-get install -y docker-ce

groupadd docker
usermod -aG docker lnh

systemctl enable docker

docker version

docker run hello-world