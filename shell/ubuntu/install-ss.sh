# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu/install-ss.sh
# sudo bash install-ss.sh ss_port ss_password

set -x

apt-get install -y python-pip

pip install git+https://github.com/shadowsocks/shadowsocks.git@master

tee <<-EOF /etc/ss.json
{
  "server":"0.0.0.0",
  "server_port":$1,
  "local_address": "127.0.0.1",
  "local_port":1080,
  "password":"$2",
  "timeout":300,
  "method":"aes-256-cfb",
  "fast_open": false
}
EOF

cat /etc/ss.json

ssserver -c /etc/ss.json -d stop

ssserver -c /etc/ss.json -d start

lsof -i:$1

# https://shadowsocks.org
# https://github.com/shadowsocks/shadowsocks/tree/master
# https://github.com/shadowsocks/shadowsocks/wiki/Configuration-via-Config-File

# https://github.com/gfwlist/gfwlist
# https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
