# 替换源

1. 备份`CentOS-Base.repo`
    ```sh
    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
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

[/shell/centos/163.sh]

http://vault.centos.org/

http://mirrors.163.com/.help/centos.html

[/shell/centos/163.sh]:../shell/centos/163.sh