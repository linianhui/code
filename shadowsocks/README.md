# project

github : https://github.com/shadowsocks

web site : https://shadowsocks.org

# gfw

https://github.com/gfwlist/gfwlist

https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt

# install

```shell
apt-get install python-gevent python-pip
pip install shadowsocks
apt-get install python-m2crypto
```

# config

```shell
vi /etc/ss.json
```

```json
{
    "server":"0.0.0.0",
    "server_port":8038,
    "local_port":1080,
    "password":"you password",
    "timeout":600,
    "method":"aes-256-cfb"
}
```

# start

```shell
ssserver -c /etc/ss.json -d start
```
