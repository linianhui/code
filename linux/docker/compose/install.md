# 安装Docker Compose

1. 下载最新的Docker Compose
    ```shell
    sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    ```
2. 添加可执行权限
    ```shell
    sudo chmod +x /usr/local/bin/docker-compose
    ```
3. 查看安装的版本
    ```shell
    docker-compose --version
    ```

# 参考

https://docs.docker.com/compose/install/
