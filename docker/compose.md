# 安装Docker Compose

1. 下载最新的Docker Compose
    ```sh
    sudo curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    ```
2. 添加可执行权限
    ```sh
    sudo chmod +x /usr/local/bin/docker-compose
    ```
3. 查看安装的版本
    ```sh
    docker-compose --version
    ```

# 参考

[/shell/docker-compose.install.sh]

https://docs.docker.com/compose/install

https://github.com/docker/compose/releases

[/shell/docker-compose.install.sh]:../shell/docker-compose.install.sh