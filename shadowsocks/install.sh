set -x

apt-get install -y python-gevent python-pip

pip install shadowsocks

apt-get install -y python-m2crypto

tee <<-EOF /etc/ss.json
{
  "server":"0.0.0.0",
  "server_port":8388,
  "local_address": "127.0.0.1",
  "local_port":1080,
  "password":"$1",
  "timeout":300,
  "method":"aes-256-cfb",
  "fast_open": false
}
EOF

cat /etc/ss.json

ssserver -c /etc/ss.json -d stop

ssserver -c /etc/ss.json -d start