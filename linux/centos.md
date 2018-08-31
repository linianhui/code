# 替换源

>http://mirrors.163.com/.help/centos.html

1. 备份`CentOS-Base.repo`
    ```sh
    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
    ```
2. 添加163源
    ```sh
    curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo
    ```
3. 更新
    ```sh
    sudo yum clean all
    sudo yum makecache
    ```