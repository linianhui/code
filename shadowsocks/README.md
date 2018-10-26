# project

github : https://github.com/shadowsocks/shadowsocks/tree/master

web site : https://shadowsocks.org

# gfw

https://github.com/gfwlist/gfwlist

https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt

# install

```sh
apt-get install python-gevent python-pip

pip install shadowsocks

apt-get install python-m2crypto
```

# config

https://github.com/shadowsocks/shadowsocks/wiki/Configuration-via-Config-File

```sh
vi /etc/ss.json
```

```json
{
  "server":"0.0.0.0",
  "server_port":8388,
  "local_address": "127.0.0.1",
  "local_port":1080,
  "password":"set you password",
  "timeout":300,
  "method":"aes-256-cfb",
  "fast_open": false
}
```

# start

```sh
ssserver -c /etc/ss.json -d start
```