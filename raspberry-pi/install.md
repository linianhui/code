# OS

https://www.raspberrypi.org/downloads/

## Raspbian
https://www.raspberrypi.org/downloads/raspbian/

1. https://downloads.raspberrypi.org/raspbian_full_latest.torrent
2. https://downloads.raspberrypi.org/raspbian_latest.torrent
3. https://downloads.raspberrypi.org/raspbian_lite_latest.torrent

## Ubuntu 

https://www.ubuntu.com/download/iot/raspberry-pi-2-3

1. http://cdimage.ubuntu.com/ubuntu-core/18/stable/current/ubuntu-core-18-armhf+raspi3.img.xz


# Tools

https://github.com/balena-io/etcher

1. https://github.com/balena-io/etcher/releases/download/v1.5.23/balenaEtcher-Portable-1.5.23-x86.exe


# Config

```sh
cat <<-EOF >> /etc/wpa_supplicant/wpa_supplicant.conf
network={
  ssid="ssid"
  psk="password"
}
EOF
```