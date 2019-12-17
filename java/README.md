# Windows平台安装

## 1 安装Java

https://developers.redhat.com/products/openjdk/download

1. 设置环境变量：
    ```powershell
    Env-SetJavaEnvironmentVariable
    ```
2. 查看版本信息：
    ```powershell
    java -v
    ```

## 2 安装Maven

https://maven.apache.org/download.cgi

1. 下载二进制包：`apache-maven-3.6.1-bin.zip`解压至`d:\.app\.maven\`目录下。
2. 设置环境变量：
    ```powershell
    Env-SetMavenEnvironmentVariable
    ```
3. 设置仓库信息：`maven/setting.xml`替换`HOME/.m2/settiing.xml`配置文件。
4. 查看版本信息：
    ```powershell
    mvn -v
    ```
5. wrapper: 
    ```sh
    # https://github.com/takari/maven-wrapper
    mvn --non-recursive --debug io.takari:maven:wrapper -Dmaven=3.6.3
    ```

## 3 安装Gradle

https://gradle.org/releases/

1. 下载二进制包：`gradle-5.5.1-bin.zip`解压至`d:\.app\.gradle\`目录下。
2. 设置环境变量：
    ```powershell
    Env-SetGradleEnvironmentVariable
    ```
3. 查看版本信息：
    ```powershell
    gradle -v
    ```
4. wrapper
    ```sh
    # https://docs.gradle.org/current/userguide/gradle_wrapper.html
    gradle wrapper --gradle-version 6.0.1 --distribution-type all
    ```

## 4 安装Spring Boot Cli

https://repo.spring.io/release/org/springframework/boot/spring-boot-cli/2.1.6.RELEASE/

1. 下载二进制包：`spring-boot-cli-2.1.6.RELEASE-bin.zip`解压至`d:\.app\.spring-boot-cli\`目录下。
2. 设置环境变量：
    ```powershell
    Env-SetSpringBootCliEnvironmentVariable
    ```
3. 查看版本信息：
    ```powershell
    spring version
    ```
