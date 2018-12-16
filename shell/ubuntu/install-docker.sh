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

curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

apt-get update -y && apt-get install -y docker-ce

echo '{"registry-mirrors": ["https://registry.docker-cn.com"]}' | tee /etc/docker/daemon.json

groupadd docker && usermod -aG docker $USER

systemctl enable docker && systemctl daemon-reload && systemctl restart docker

docker run hello-world