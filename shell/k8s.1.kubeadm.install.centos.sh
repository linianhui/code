# wget https://raw.githubusercontent.com/linianhui/code/master/shell/centos.k8s.kubeadm.install.sh
# sudo bash centos.k8s.kubeadm.install.sh

set -x

cat <<-EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg
EOF

yum install -y kubelet kubeadm kubectl

systemctl enable kubelet

systemctl start kubelet