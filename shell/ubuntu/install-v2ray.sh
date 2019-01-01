# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu/install-v2ray.sh
# sudo bash install-v2ray.sh vmss_port vmss_userid ss_port ss_password

set -x

bash <(wget -O - https://install.direct/go.sh)

cat /etc/v2ray/config.json

cat <<-EOF > /etc/v2ray/config.json
{
  "inbounds": [
    {
      "protocol": "vmess",
      "port": $1,
      "settings": {
        "clients": [
          {
            "id": "$2"
          }
        ]
      }
    },
    {
      "protocol": "shadowsocks",
      "port": $3,
      "settings": {
        "method": "aes-256-cfb",
        "password": "$4",
        "network": "tcp,udp"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",
      "settings": {}
    }
  ]
}
EOF

cat /etc/v2ray/config.json

service v2ray restart

lsof -i:$1

lsof -i:$3

# https://github.com/v2ray/v2ray-core
# https://www.v2ray.com/chapter_02