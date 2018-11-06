# 安装Docker Machine

## Linux

1. 下载最新的Docker Machine
    ```sh
    sudo curl -L https://github.com/docker/machine/releases/download/v0.15.0/docker-machine-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-machine
    ```
2. 添加可执行权限
    ```sh
    sudo chmod +x /usr/local/bin/docker-machine
    ```
3. 查看安装的版本
    ```sh
    docker-machine --version
    ```

## Windows

https://github.com/docker/machine/releases/download/v0.15.0/docker-machine-Windows-x86_64.exe

```powershell
## 设置环境变量
Env-SetDockerEnvironmentVariable

docker-machine -v
```

# 创建docker vm

https://github.com/boot2docker/boot2docker/releases/download/v18.06.1-ce/boot2docker.iso

## Hyper-V

```powershell
docker-machine --debug create --driver hyperv default
```

## Virtual Box

```powershell
docker-machine --debug create --driver virtualbox default
```

# 参考

https://docs.docker.com/machine

https://github.com/docker/machine/releases/

https://github.com/boot2docker/boot2docker/releases
