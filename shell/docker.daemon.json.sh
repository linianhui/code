set -eux
# https://docs.docker.com/engine/reference/commandline/dockerd//#daemon-configuration-file

cat <<-EOF > /etc/docker/daemon.json
{
  "debug": true,
  "tls": false,
  "ipv6": false,
  "registry-mirrors": [
    "https://registry.docker-cn.com",
    "https://dockerhub.azk8s.cn",
    "https://reg-mirror.qiniu.com",
    "https://docker.mirrors.ustc.edu.cn"
  ],
  "insecure-registries": [
    "registry.test"
  ]
}
EOF

cat /etc/docker/daemon.json

systemctl daemon-reload
systemctl restart docker

docker info