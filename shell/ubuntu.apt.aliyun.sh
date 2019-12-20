# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.apt.aliyun.sh
# sudo bash ubuntu.apt.aliyun.sh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.apt.aliyun.sh)"

set -euxo pipefail

cat /etc/apt/sources.list

cp /etc/apt/sources.list /etc/apt/sources.list.bak

sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

cat /etc/apt/sources.list