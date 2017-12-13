# project
github : https://github.com/shadowsocks

web site : https://shadowsocks.org

# GFW
https://github.com/gfwlist/gfwlist

https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt

# install
1. `apt-get install python-gevent python-pip`
2. `pip install shadowsocks`
3. `apt-get install python-m2crypto`

# config
`vi /etc/ss.json`
``` json
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
`ssserver -c /etc/ss.json -d start`
