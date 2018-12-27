# 1. 安装

## 1.1 在线安装
```sh
# 默认配置
sudo coreos-install -d /dev/sda -C stable

# 自定义配置
sudo coreos-install -d /dev/sda -c cloud-config.yaml -C stable
```

## 1.2 本地安装

下载最新的安装文件：

| 说明                 | 下载地址                                                                                 |
| -------------------- | ---------------------------------------------------------------------------------------- |
| 最新的版本信息       | https://stable.release.core-os.net/amd64-usr/current/version.txt                         |
| 引导镜像文件         | https://stable.release.core-os.net/amd64-usr/current/coreos_production_iso_image.iso     |
| 安装的镜像文件       | https://stable.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2     |
| 安装的镜像文件的签名 | https://stable.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.sig |

搭建本地`HTTP服务器`托管以下四个文件(`1911.5.0`为version中的`COREOS_VERSION`)：

| 说明                 | 本地的HTTP地址                                                  |
| -------------------- | --------------------------------------------------------------- |
| 配置文件             | http://192.168.2.2/cloud-config.yaml                            |
| 版本信息             | http://192.168.2.2/current/version.txt                          |
| 安装的镜像文件       | http://192.168.2.2/1911.5.0/coreos_production_image.bin.bz2     |
| 安装的镜像文件的签名 | http://192.168.2.2/1911.5.0/coreos_production_image.bin.bz2.sig |

```sh
wget http://192.168.2.2/cloud-config.yaml

sudo coreos-install -d /dev/sda -c cloud-config.yaml -b  http://192.168.2.2
```

# 参考

https://coreos.com/os/docs/latest/booting-with-iso.html
  * https://coreos.com/os/docs/1911.5.0/booting-with-iso.html

https://coreos.com/os/docs/latest/installing-to-disk.html
  * https://coreos.com/os/docs/1911.5.0/installing-to-disk.html

https://coreos.com/os/docs/latest/cloud-config.html
  * https://coreos.com/os/docs/1911.5.0/cloud-config.html

https://coreos.com/validate/
