# 安装Docker-CE

1. 卸载旧版本
    ```shell
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
    ```shell
    sudo yum install -y yum-utils \
                        device-mapper-persistent-data \
                        lvm2
    ```
3. 添加docker源
    ```shell
    sudo yum-config-manager \
         --add-repo \
         https://download.docker.com/linux/centos/docker-ce.repo
    ```
4. 安装docker
    ```shell
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
    ```shell
    sudo groupadd docker
    sudo usermod -aG docker lnh
    ```
7. 运行hello-world
    ```shell
    docker run hello-world
    ```

# 参考

https://docs.docker.com/install/linux/docker-ce/centos/


https://www.docker-cn.com/registry-mirror
