set -x

yum remove -y docker \
              docker-client \
              docker-client-latest \
              docker-common \
              docker-latest \
              docker-latest-logrotate \
              docker-logrotate \
              docker-selinux \
              docker-engine-selinux \
              docker-engine

yum install -y yum-utils \
               device-mapper-persistent-data \
               lvm2

yum-config-manager \
         --add-repo \
         http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

yum install -y docker-ce

cat <<EOF > /etc/docker/daemon.json
{
  "registry-mirrors": [
    "https://registry.docker-cn.com"
  ]
}
EOF

cat /etc/docker/daemon.json

groupadd docker 
usermod -aG docker lnh

systemctl enable docker
systemctl daemon-reload
systemctl restart docker

docker version

docker run hello-world