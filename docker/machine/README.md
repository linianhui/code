# 1 安装Docker Machine

## 1.1 Linux

1. 下载最新的Docker Machine
    ```sh
    sudo curl -L https://github.com/docker/machine/releases/download/v0.16.0/docker-machine-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-machine
    ```
2. 添加可执行权限
    ```sh
    sudo chmod +x /usr/local/bin/docker-machine
    ```
3. 查看安装的版本
    ```sh
    docker-machine --version
    ```

## 1.2 Windows

https://github.com/docker/machine/releases/download/v0.16.0/docker-machine-Windows-x86_64.exe

```powershell
## 设置环境变量
Env-SetDockerEnvironmentVariable

docker-machine -v
```

# 2 创建docker vm

https://github.com/boot2docker/boot2docker/releases/download/v18.09.1-rc1/boot2docker.iso

>Windows下使用`git bash`（管理员模式）执行一下命令。

## 2.1 Hyper-V

```sh
docker-machine --debug create --driver hyperv default
```

## 2.2 Virtual Box

```sh
docker-machine --debug create --driver virtualbox default
```

# 参考

[/shell/docker/install-docker-machine.sh]

https://docs.docker.com/machine

https://github.com/docker/machine/releases/

https://github.com/boot2docker/boot2docker/releases

[/shell/docker/install-docker-machine.sh]:../../shell/docker/install-docker-machine.sh