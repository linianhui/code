# 1. 安装

## 1.1 在线安装
```sh
# 默认配置
sudo coreos-install -d /dev/sda -C stable

# 自定义配置
sudo coreos-install -d /dev/sda -C stable -i ignition.json
```

## 1.2 本地安装

### 1.2.1 下载最新的安装文件：

| 说明                 | 下载地址                                                                                 |
| -------------------- | ---------------------------------------------------------------------------------------- |
| 最新的版本信息       | https://stable.release.core-os.net/amd64-usr/current/version.txt                         |
| 引导镜像文件         | https://stable.release.core-os.net/amd64-usr/current/coreos_production_iso_image.iso     |
| 安装的镜像文件       | https://stable.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2     |
| 安装的镜像文件的签名 | https://stable.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.sig |

### 1.2.2 转换`ignition.yaml`

转换工具 : https://github.com/coreos/container-linux-config-transpiler/releases
```sh
container-linux-config-transpiler -strict -pretty -platform custom -in-file ignition.yaml -out-file ignition.json
```
### 1.2.3 搭建本地的`HTTP服务器`

HTTP服务器：https://github.com/mholt/caddy/releases

本地`HTTP服务器`托管以下四个文件(`2023.4.0`为`version.txt`中的`COREOS_VERSION`)：

| 说明                 | 本地的HTTP地址                                                       |
| -------------------- | -------------------------------------------------------------------- |
| 配置文件             | http://192.168.2.2:2015/ignition.json                                |
| 版本信息             | http://192.168.2.2:2015/current/version.txt                          |
| 安装的镜像文件       | http://192.168.2.2:2015/2023.4.0/coreos_production_image.bin.bz2     |
| 安装的镜像文件的签名 | http://192.168.2.2:2015/2023.4.0/coreos_production_image.bin.bz2.sig |

### 1.2.4 安装
```sh
wget http://192.168.2.2:2015/ignition.json

sudo coreos-install -d /dev/sda -i ignition.json -b http://192.168.2.2:2015
```

# 参考

https://coreos.com/releases

https://coreos.com/os/docs/latest/booting-with-iso.html

https://coreos.com/os/docs/latest/installing-to-disk.html

https://coreos.com/validate/


container-linux-config-transpiler : https://github.com/coreos/container-linux-config-transpiler/releases

HTTP服务器 : https://github.com/mholt/caddy/releases