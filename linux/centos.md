# 替换源

1. 备份`CentOS-Base.repo`
    ```sh
    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
    ```
2. 添加163源
    ```sh
    curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo
    ```
3. 更新源
    ```sh
    sudo yum clean all
    sudo yum makecache
    ```

# 参考

http://vault.centos.org/

http://mirrors.163.com/.help/centos.html