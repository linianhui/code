# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu/install-kubeadm.sh
# sudo bash install-kubeadm.sh

set -x

apt-get update -y
apt-get install -y apt-transport-https

curl -fsSL https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | apt-key add - 

cat <<-EOF > /etc/apt/sources.list.d/kubernetes.list
deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main
EOF

apt-get update -y
apt-get install -y kubelet kubeadm kubectl
