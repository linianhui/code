# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.dde.install.sh
# sudo bash ubuntu.dde.install.sh

set -x

# 1. 添加 PPA Repository https://launchpad.net/~leaeasy/+archive/ubuntu/dde
add-apt-repository ppa:leaeasy/dde

# 2. 安装
apt install -y dde dde-file-manager deepin-icon-theme

# 3. 启动
lightdm start