# Windows平台安装

## 1 安装Java

>JDK8下载地址：http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

1. 设置环境变量：
    ```powershell
    Env-SetJavaEnvironmentVariable
    ```
2. 查看版本信息：
    ```powershell
    java -v
    ```

## 2 安装Maven

>Maven 官方网站：https://maven.apache.org/

1. 下载二进制包：`apache-maven-3.5.3-bin.zip`解压至`d:\.java\.maven\`目录下。
2. 设置环境变量：
    ```powershell
    Env-SetMavenEnvironmentVariable
    ```
3. 设置仓库信息：`maven\setting.xml`替换`d:\.java\.maven\conf\settings.xml`配置文件。
4. 查看版本信息：
    ```powershell
    mvn -v
    ```

## 3 安装Gradle

>Gradle 官方网站：https://gradle.org/releases/

1. 下载二进制包：`gradle-4.6-bin.zip`解压至`d:\.java\.gradle\`目录下。
2. 设置环境变量：
    ```powershell
    Env-SetGradleEnvironmentVariable
    ```
3. 查看版本信息：
    ```powershell
    gradle -v
    ```

## 4 安装Spring Boot Cli

>Spring Boot 官方网站：https://projects.spring.io/spring-boot/

1. 下载二进制包：`spring-boot-cli-2.0.1.RELEASE-bin.zip`解压至`d:\.java\.spring-boot-cli\`目录下。
2. 设置环境变量：
    ```powershell
    Env-SetSpringBootCliEnvironmentVariable
    ```
3. 查看版本信息：
    ```powershell
    spring version
    ```