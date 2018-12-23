set -x

apt-get install python-gevent python-pip

pip install shadowsocks

apt-get install python-m2crypto

cp ss.json /etc/ss.json

ssserver -c /etc/ss.json -d stop

ssserver -c /etc/ss.json -d start