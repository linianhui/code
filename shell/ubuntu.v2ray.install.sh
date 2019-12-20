# wget https://raw.githubusercontent.com/linianhui/code/master/shell/ubuntu.v2ray.install.sh
# sudo bash ubuntu.v2ray.install.sh VMESS_PORT VMESS_CLIENT_ID

set -euxo pipefail

VMESS_PORT=$1
VMESS_CLIENT_ID=$2

bash <(wget -O - https://install.direct/go.sh)

cat /etc/v2ray/config.json

cat <<-EOF > /etc/v2ray/config.json
{
  "inbounds": [
    {
      "protocol": "vmess",
      "port": $VMESS_PORT,
      "settings": {
        "clients": [
          {
            "id": "$VMESS_CLIENT_ID"
          }
        ]
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

service v2ray stop

service v2ray start

service v2ray status

lsof -i:$VMESS_PORT

# https://github.com/v2ray/v2ray-core
# https://www.v2ray.com/chapter_02