# 安装Docker-CE

1. 卸载旧版本
    ```sh
    sudo yum remove docker \
                    docker-client \
                    docker-client-latest \
                    docker-common \
                    docker-latest \
                    docker-latest-logrotate \
                    docker-logrotate \
                    docker-selinux \
                    docker-engine-selinux \
                    docker-engine
    ```
2. 安装必要的工具
    ```sh
    sudo yum install -y yum-utils \
                        device-mapper-persistent-data \
                        lvm2
    ```
3. 添加docker源
    ```sh
    sudo yum-config-manager \
         --add-repo \
         http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
    ```
4. 安装docker
    ```sh
    sudo yum install docker-ce
    sudo systemctl start docker
    ```
5. 镜像加速：编辑`/etc/docker/daemon.json`文件，添加如下的配置信息：
    ```json
    {
      "registry-mirrors": ["https://registry.docker-cn.com"]
    }
    ```
6. 添加docker用户组，并把当前用户添加到docker组中。
    ```sh
    sudo groupadd docker
    sudo usermod -aG docker $USER
    ```
7. 运行hello-world
    ```sh
    docker run hello-world
    ```

# 参考

[/shell/centos.docker.install.sh]

https://docs.docker.com/install/linux/docker-ce/centos/

https://www.docker-cn.com/registry-mirror

https://opsx.alibaba.com/mirror

[/shell/centos.docker.install.sh]:../shell/centos.docker.install.sh