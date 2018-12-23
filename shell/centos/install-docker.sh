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

systemctl start docker

tee /etc/docker/daemon.json << EOF
{
  "registry-mirrors": [
    "https://registry.docker-cn.com"
  ]
}
EOF

groupadd docker && usermod -aG docker $USER

systemctl enable docker && systemctl daemon-reload && systemctl restart docker

docker run hello-world