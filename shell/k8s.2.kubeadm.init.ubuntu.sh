# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.k8s.2.kubeadm.init.sh
# sudo bash ubuntu.k8s.3.kubeadm.pull-images.init.sh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.k8s.2.kubeadm.init.sh)"

set -x

kubeadm init --image-repository gcr.azk8s.cn/google_containers