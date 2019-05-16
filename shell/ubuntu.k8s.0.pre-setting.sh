# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.k8s.0.pre-setting.sh
# sudo bash ubuntu.k8s.0.pre-setting.sh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.k8s.0.pre-setting.sh)"

set -x


# 禁用防火墙
ufw disable


# 禁用SWAP
# 永久禁用
cp /etc/fstab /etc/fstab.bak
cat /etc/fstab.bak | grep -v swap > /etc/fstab
cat /etc/fstab


# 禁用SELINUX
# 永久禁用
tee <<-EOF /etc/selinux/config
SELINUX=permissive
EOF


# 修改dockerd配置
tee <<-EOF /etc/docker/daemon.json
{
  "iptables": false,
  "storage-driver": "overlay2",
  "exec-opts": ["native.cgroupdriver=systemd"],
  "registry-mirrors": [
    "https://registry.docker-cn.com"
  ]
}
EOF
systemctl daemon-reload
systemctl restart docker
docker info | grep -i cgroup


# 配置内核参数
tee <<-EOF /etc/sysctl.d/k8s.conf
net.ipv4.ip_forward=1
net.bridge.bridge-nf-call-ip6tables=1
net.bridge.bridge-nf-call-iptables=1
EOF
sysctl --system