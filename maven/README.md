Maven 官方网站：https://maven.apache.org/

# Windows 平台

## 1 下载

1. 从官网下载`apache-maven-3.5.3-bin.zip`压缩包。
2. 解压至`d:\.java\.apache-maven\`目录下。


## 2 设置环境变量

追加`d:\.java\.apache-maven\bin`到操作系统的`Path`变量中。

## 3 修改配置
配置文件位于`conf\settings.xml`。

本地仓库`/settings`节点：
```xml
<localRepository>d:\.java\.maven-repository</localRepository> 
```

镜像地址`/settings/mirrors`节点：
```xml
<mirror>
  <id>aliyun</id>
  <name>aliyun Maven</name>
  <mirrorOf>*</mirrorOf>
  <url>http://maven.aliyun.com/nexus/content/groups/public/</url>
</mirror> 
```

## 4 完成

打开命令行，输入`mvn -v`：
```cmd
mvn -v

Apache Maven 3.5.3 (3383c37e1f9e9b3bc3df5050c29c8aff9f295297; 2018-02-25T03:49:05+08:00)
Maven home: D:\.java\.apache-maven\bin\..
Java version: 1.8.0_162, vendor: Oracle Corporation
Java home: C:\Program Files\Java\jre1.8.0_162
Default locale: en_US, platform encoding: GBK
OS name: "windows 10", version: "10.0", arch: "amd64", family: "windows"
```
