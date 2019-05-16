# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.k8s.2.kubeadm.pull-images.sh
# sudo bash ubuntu.k8s.2.kubeadm.pull-images.sh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.k8s.2.kubeadm.pull-images.sh)"

set -x


# 下载镜像
kubeadm config images list | \
sed -e 's/^/docker pull /g' -e 's#k8s.gcr.io#registry.aliyuncs.com/google_containers#g' | \
sh -x


# 重命名镜像
docker images | \
grep google_containers | \
awk '{print "docker tag ",$1":"$2,$1":"$2}' | \
sed -e 's#registry.aliyuncs.com/google_containers#k8s.gcr.io#2' | \
sh -x


# 删除google_containers镜像
docker images | \
grep google_containers | \
awk '{print "docker rmi ", $1":"$2}' | \
sh -x


# 查看k8s镜像
docker images | grep k8s