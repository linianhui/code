# 1. 安装

## 1. 替换源

1. 备份`sources.list`
    ```sh
    sudo mv /etc/apt/sources.list /etc/apt/sources.list.backup
    ```
2. 添加163源
    ```sh
    echo "\
    deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs) main multiverse restricted universe
    deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-backports main multiverse restricted universe
    deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-proposed main multiverse restricted universe
    deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-security main multiverse restricted universe
    deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-updates main multiverse restricted universe
    deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs) main multiverse restricted universe
    deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-backports main multiverse restricted universe
    deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-proposed main multiverse restricted universe
    deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-security main multiverse restricted universe
    deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-updates main multiverse restricted universe" | \
    sudo tee /etc/apt/sources.list
    ```
3. 更新源
    ```sh
    sudo apt-get update -y
    sudo apt-get upgrade -y
    ```

## 2. 固定IP

编辑`/etc/netplan/50-cloud-init.yaml`(18.04)配置文件.
```yaml
network:
    ethernets:
        eth0:
            dhcp4: no
            dhcp6: no
            addresses: [192.168.0.101/24]
            gateway4: 192.168.0.1
    version: 2
```

```sh
# 启用配置
sudo netplan apply

# 查看网络
ip a
```

## 3. 安装deepin桌面

```sh
# 1. 添加 PPA Repository https://launchpad.net/~leaeasy/+archive/ubuntu/dde
sudo add-apt-repository ppa:leaeasy/dde

# 2. 安装
sudo apt install dde dde-file-manager deepin-icon-theme

# 3. 启动
sudo lightdm start
```
# 2. Cloud Image

http://cloud-images.ubuntu.com/bionic/current/

# 参考

http://releases.ubuntu.com/

http://old-releases.ubuntu.com/

http://cdimage.ubuntu.com/

http://mirrors.163.com/.help/ubuntu.html

https://www.deepin.org/original/deepin-boot-maker/