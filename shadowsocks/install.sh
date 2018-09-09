#!/bin/bash

apt-get install python-gevent python-pip

pip install shadowsocks

apt-get install python-m2crypto

cp shadowsocks.json /etc/shadowsocks.json

ssserver -c /etc/shadowsocks.json -d stop

ssserver -c /etc/shadowsocks.json -d start