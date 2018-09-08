# 安装Docker-CE

1. 卸载旧版本
    ```sh
    sudo apt-get remove docker \
                        docker-engine \
                        docker.io
    ```
2. 安装必要的工具
    ```sh
    sudo apt-get update
    
    sudo apt-get install apt-transport-https \
                         ca-certificates \
                         curl \
                         software-properties-common
    ```
3. 添加docker源
    ```sh
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    
    sudo apt-key fingerprint 0EBFCD88
    
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
4. 安装docker
    ```sh
    sudo apt-get update
    
    sudo apt-get install docker-ce
    ```
5. 镜像加速：编辑`/etc/docker/daemon.json`文件，添加如下的配置信息：
    ```json
    {
      "registry-mirrors": ["http://hub-mirror.c.163.com","https://registry.docker-cn.com"]
    }
    ```
6. 添加docker用户组，并把当前用户添加到docker组中。
    ```sh
    sudo groupadd docker
    sudo usermod -aG docker lnh
    ```
7. 运行hello-world
    ```sh
    docker run hello-world
    ```

# 参考

https://docs.docker.com/install/linux/docker-ce/ubuntu/

https://www.docker-cn.com/registry-mirror
