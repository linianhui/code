# 替换源

>http://mirrors.163.com/.help/ubuntu.html

1. 备份`sources.list`
    ```shell
    sudo mv /etc/apt/sources.list /etc/apt/sources.list.backup
    ```
2. 添加163源
    ```shell
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
3. 更新
    ```shell
    sudo apt-get update -y
    sudo apt-get upgrade -y
    ```
