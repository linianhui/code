# wget https://raw.githubusercontent.com/linianhui/code/master/shell/centos/static-ip.sh
# sudo bash static-ip.sh 202

set -x

IP=$1

ip a

cat /etc/sysconfig/network-scripts/ifcfg-eth0

cat <<-EOF > /etc/sysconfig/network-scripts/ifcfg-eth0
# systemctl restart network
TYPE=Ethernet
NAME=eth0
DEVICE=eth0
ONBOOT=yes
BOOTPROTO=static
IPADDR=192.168.2.$IP
NETMASK=255.255.255.0
GATEWAY=192.168.2.1
PROXY_METHOD=none
BROWSER_ONLY=no
DEFROUTE=yes
IPV4_FAILURE_FATAL=yes
EOF

cat /etc/sysconfig/network-scripts/ifcfg-eth0


cat /etc/resolv.conf

cat <<-EOF > /etc/resolv.conf
# systemctl restart network
nameserver 192.168.2.1
EOF

cat /etc/resolv.conf


systemctl restart network

ip a