################################
# powershell env functions
################################

[string]$APP_PATH   = 'd:\.app\';
[string]$CACHE_PATH = 'd:\.cache\';

# https://github.com/MicrosoftArchive/redis/releases
function Env-SetRedisEnvironmentVariable() {
    $APP_REDIS_PATH = $APP_PATH + '.redis\';

    Env-TryAppendPathVariable -Value $APP_REDIS_PATH
}

# https://www.mongodb.org/dl/win32/x86_64-2008plus-ssl
function Env-SetMongoDBEnvironmentVariable() {
    $APP_MONGO_PATH = $APP_PATH + '.mongo\';

    Env-TryAppendPathVariable -Value $APP_MONGO_PATH
}

# https://www.putty.org/
function Env-SetPuttyEnvironmentVariable() {
    $APP_PUTTY_PATH = $APP_PATH + '.putty\';

    Env-TryAppendPathVariable -Value $APP_PUTTY_PATH
}

# https://github.com/shadowsocks/shadowsocks-windows
function Env-SetShadowsocksEnvironmentVariable() {
    $APP_SHADOWSOCKS_PATH = $APP_PATH + '.shadowsocks\';

    Env-TryAppendPathVariable -Value $APP_SHADOWSOCKS_PATH
}

# http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
# https://github.com/ojdkbuild/ojdkbuild
# http://openjdk.java.net/install/
function Env-SetJavaEnvironmentVariable() {
    $APP_JAVA_JDK_PATH          = $APP_PATH + '.java\jdk\';
    $APP_JAVA_JDK_BIN_PATH      = $APP_JAVA_JDK_PATH + 'bin\';
    $APP_JAVA_JDK_LIB_PATH      = $APP_JAVA_JDK_PATH + 'lib\';
    $APP_JAVA_JDK_LIB_TOOLS_JAR = $APP_JAVA_JDK_LIB_PATH + 'tools.jar';

    Env-TrySetVariable -Variable 'JAVA_HOME' -Value $APP_JAVA_JDK_PATH
    Env-TrySetVariable -Variable 'CLASSPATH' -Value ".;$APP_JAVA_JDK_LIB_PATH;$APP_JAVA_JDK_LIB_TOOLS_JAR"
    Env-TryAppendPathVariable -Value $APP_JAVA_JDK_BIN_PATH
}

# https://golang.org/doc/install
function Env-SetGoEnvironmentVariable() {
    $APP_GO_PATH       = $APP_PATH + '.go\';
    $APP_GO_BIN_PATH   = $APP_GO_PATH + 'bin\';

    $CACHE_GO_PATH     = $CACHE_PATH + '.go\';

    Env-TrySetVariable -Variable 'GOROOT' -Value $APP_GO_PATH
    Env-TrySetVariable -Variable 'GOCACHE' -Value $CACHE_GO_PATH
    Env-TryAppendPathVariable -Value $APP_GO_BIN_PATH
}

# https://rubyinstaller.org/downloads/
function Env-SetRubyEnvironmentVariable() {
    $APP_RUBY_PATH       = $APP_PATH + '.ruby\';
    $APP_RUBY_BIN_PATH   = $APP_RUBY_PATH + 'bin\';

    Env-TrySetVariable -Variable 'RUBY_HOME' -Value $APP_RUBY_PATH
    Env-TryAppendPathVariable -Value $APP_RUBY_BIN_PATH
}

# https://nodejs.org/en/download/
function Env-SetNodeEnvironmentVariable() {
    $APP_NODE_PATH         = $APP_PATH + '.node\';
    $APP_NODE_MODULES_PATH = $APP_NODE_PATH + 'node_modules\';

    $CACHE_NODE_PATH      = $CACHE_PATH + '.node\';

    Env-TrySetVariable -Variable 'NODE_PATH' -Value $APP_NODE_MODULES_PATH
    Env-TryAppendPathVariable -Value $APP_NODE_PATH

    npm config set cache $CACHE_NODE_PATH --global
    npm config set registry "https://registry.npm.taobao.org" --global
}


# https://kotlinlang.org/docs/tutorials/command-line.html
function Env-SetKotlinEnvironmentVariable() {
    $APP_KOTLIN_PATH     = $APP_PATH + '.kotlin\'
    $APP_KOTLIN_BIN_PATH = $APP_KOTLIN_PATH + 'bin\'

    Env-TryAppendPathVariable -Value $APP_KOTLIN_BIN_PATH
}


# https://dotnet.github.io/
# https://docs.microsoft.com/en-us/dotnet/core/tools/telemetry
function Env-SetNetEnvironmentVariable() {
    Env-TrySetVariable -Variable 'DOTNET_CLI_TELEMETRY_OPTOUT' -Value "true" 
    Env-TryAppendPathVariable -Value 'C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\'
}

# https://www.python.org/downloads/windows/
# Windows x86-64 embeddable zip file
function Env-SetPythonEnvironmentVariable() {
    $APP_PYTHON_PATH         = $APP_PATH + '.python\';
    $APP_PYTHON_SCRIPTS_PATH = $APP_PYTHON_PATH + 'scripts\';

    Env-TryAppendPathVariable -Value $APP_PYTHON_PATH
    Env-TryAppendPathVariable -Value $APP_PYTHON_SCRIPTS_PATH
}

# https://github.com/icsharpcode/ILSpy/releases
function Env-SetILSpyEnvironmentVariable() {
    $APP_ILSPY_PATH = $APP_PATH + '.ilspy\';

    Env-TryAppendPathVariable -Value $APP_ILSPY_PATH
}

# https://www.nuget.org/downloads 
# https://docs.microsoft.com/en-us/nuget/tools/cli-ref-environment-variables
function Env-SetNugetEnvironmentVariable() {
    $APP_NUGET_PATH   = $APP_PATH + '.nuget\';

    $CACHE_NUGET_PATH = $CACHE_PATH + '.nuget\';

    Env-TrySetVariable -Variable 'NUGET_PACKAGES' -Value $CACHE_NUGET_PATH
    Env-TryAppendPathVariable -Value $APP_NUGET_PATH
}

# https://developer.android.com/studio/releases/platform-tools.html
function Env-SetADBEnvironmentVariable() {
    $APP_ADB_PATH = $APP_PATH + '.adb\';

    Env-TryAppendPathVariable -Value $APP_ADB_PATH
}

# https://www.cpuid.com/softwares/cpu-z.html
function Env-SetCPUEnvironmentVariable() {
    $APP_CPU_PATH = $APP_PATH + '.cpu\';

    Env-TryAppendPathVariable -Value $APP_CPU_PATH
}

# https://www.techpowerup.com/gpuz/
function Env-SetGPUEnvironmentVariable() {
    $APP_GPU_PATH = $APP_PATH + '.gpu\';

    Env-TryAppendPathVariable -Value $APP_GPU_PATH
}

# http://www.superpi.net/Download/
function Env-SetPIEnvironmentVariable() {
    $APP_PI_PATH = $APP_PATH + '.pi\';

    Env-TryAppendPathVariable -Value $APP_PI_PATH
}

# https://maven.apache.org/
function Env-SetMavenEnvironmentVariable() {
    $APP_MAVEN_PATH     = $APP_PATH + '.maven\'
    $APP_MAVEN_BIN_PATH = $APP_MAVEN_PATH + 'bin\'

    # for maven 1
    Env-TrySetVariable -Variable 'MAVEN_HOME' -Value $APP_MAVEN_PATH

    # for maven 2 or 3
    Env-TrySetVariable -Variable 'M2_HOME' -Value $APP_MAVEN_PATH

    Env-TryAppendPathVariable -Value $APP_MAVEN_BIN_PATH
}

# https://gradle.org/releases/
# https://docs.gradle.org/current/userguide/installation.html
# https://docs.gradle.org/current/userguide/build_environment.html#sec:gradle_environment_variables
function Env-SetGradleEnvironmentVariable() {
    $APP_GRADLE_PATH       = $APP_PATH + '.gradle\';
    $APP_GRADLE_BIN_PATH   = $APP_GRADLE_PATH + 'bin\';

    $CACHE_GRADLE_PATH     = $CACHE_PATH + '.gradle\';

    Env-TrySetVariable -Variable 'GRADLE_HOME' -Value $APP_GRADLE_PATH
    Env-TrySetVariable -Variable 'GRADLE_USER_HOME' -Value $CACHE_GRADLE_PATH
    Env-TryAppendPathVariable -Value $APP_GRADLE_BIN_PATH
}

# https://projects.spring.io/spring-boot/
function Env-SetSpringBootCliEnvironmentVariable() {
    $APP_SPRING_BOOT_CLI_PATH     = $APP_PATH + '.spring-boot-cli\';
    $APP_SPRING_BOOT_CLI_BIN_PATH = $APP_SPRING_BOOT_CLI_PATH + 'bin\';

    Env-TryAppendPathVariable -Value $APP_SPRING_BOOT_CLI_BIN_PATH
}

# http://httpd.apache.org/download.cgi
function Env-SetHttpdEnvironmentVariable() {
    $APP_HTTPD_PATH = $APP_PATH + '.httpd\';

    Env-TryAppendPathVariable -Value $APP_HTTPD_PATH
}

# http://nginx.org/en/download.html
function Env-SetNginxEnvironmentVariable() {
    $APP_NGINX_PATH = $APP_PATH + '.nginx\';

    Env-TryAppendPathVariable -Value $APP_NGINX_PATH
}

# https://kubernetes.io/docs/tasks/tools/install-kubectl
function Env-SetKubectlEnvironmentVariable() {
    $APP_KUBECTL_PATH = $APP_PATH + '.kubectl\';
    $APP_KUBECTL_CONFIG_FILE = $APP_KUBECTL_PATH + 'kubectl.config';

    Env-TrySetVariable -Variable 'KUBECONFIG' -Value $APP_KUBECTL_CONFIG_FILE
    Env-TryAppendPathVariable -Value $APP_KUBECTL_PATH
}

# https://github.com/kubernetes/minikube/releases
function Env-SetMinikubeEnvironmentVariable() {
    $APP_MINIKUBE_PATH = $APP_PATH + '.minikube\';
    $CACHE_MINIKUBE_PATH = 'e:\.minikube\';

    Env-TrySetVariable -Variable 'MINIKUBE_HOME' -Value $CACHE_MINIKUBE_PATH
    Env-TrySetVariable -Variable 'MINIKUBE_WANTUPDATENOTIFICATION' -Value 'false'
    Env-TrySetVariable -Variable 'MINIKUBE_WANTREPORTERRORPROMPT' -Value 'false'
    Env-TrySetVariable -Variable 'CHANGE_MINIKUBE_NONE_USER' -Value 'true'
    Env-TryAppendPathVariable -Value $APP_MINIKUBE_PATH
}

# https://docs.docker.com/compose
# https://docs.docker.com/machine
function Env-SetDockerEnvironmentVariable() {
    $APP_DOCKER_PATH = $APP_PATH + '.docker\';
    $CACHE_DOCKER_PATH = 'e:\.docker\';

    Env-TrySetVariable -Variable 'MACHINE_STORAGE_PATH' -Value $CACHE_DOCKER_PATH
    Env-TryAppendPathVariable -Value $APP_DOCKER_PATH
}

# https://docs.helm.sh
# https://github.com/helm/helm/releases
function Env-SetHelmEnvironmentVariable() {
    $APP_HLEM_PATH = $APP_PATH + '.helm\';

    Env-TryAppendPathVariable -Value $APP_HLEM_PATH
}