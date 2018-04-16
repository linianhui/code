# Windows平台安装

## 1 安装Go

1. 下载二进制包：`go1.10.1.windows-amd64.zip`解压至`d:\.go\.sdk`目录下。
2. 设置环境变量：
    ```powershell
    Env-SetGoEnvironmentVariable
    ```
3. 查看版本信息：
    ```powershell
    go version
    go env
    ```

# 参考

https://golang.org/doc/install
