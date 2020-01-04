APP_DIR=$HOME/_app
CACHE_DIR=$HOME/_cache
COFIG_DIR=$HOME/_config
DATA_DIR=$HOME/_data

# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CACHE_HOME=$CACHE_DIR
export XDG_CONFIG_HOME=$COFIG_DIR
export XDG_DATA_HOME=$DATA_DIR

# https://docs.microsoft.com/en-us/dotnet/core/tools/telemetry
# https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-tool-install
export DOTNET_CLI_TELEMETRY_OPTOUT=false
export DOTNET_TOOLS_HOME=$HOME/.dotnet/tools
export PATH=$PATH:$DOTNET_TOOLS_HOME

# https://gradle.org/releases/ 
export GRADLE_HOME=$APP_DIR/_gradle
export GRADLE_USER_HOME=$CACHE_DIR/_gradle
export PATH=$PATH:$GRADLE_HOME/bin

# https://maven.apache.org/
# http://maven.apache.org/configure.html
export MAVEN_HOME=$APP_DIR/_maven
export MAVEN_REPOSITORY_HOME=$CACHE_DIR/_maven
export M2_HOME=$MAVEN_HOME
export MAVEN_OPTS=-Dfile.encoding=UTF-8
export MAVEN_USER_HOME=$MAVEN_HOME
export PATH=$PATH:$MAVEN_HOME/bin

# https://projects.spring.io/spring-boot/
export SPRING_BOOT_CLI_HOME=$APP_DIR/_spring-boot-cli
export PATH=$PATH:$SPRING_BOOT_CLI_HOME/bin

# https://www.mono-project.com/
# export MONO_HOME=/Library/Frameworks/Mono.framework/Versions/5.0.1
# export MONO_HOME_BIN=$MONO_HOME/bin
# export PATH=$PATH:$MONO_HOME_BIN

# https://docs.docker.com/machine/
# https://docs.docker.com/machine/drivers/virtualbox/
export DOCKER_HOME=$APP_DIR/_docker
export MACHINE_STORAGE_PATH=$DATA_DIR/_docker
export VIRTUALBOX_BOOT2DOCKER_URL=$DOCKER_HOME/boot2docker.iso
export VIRTUALBOX_UI_TYPE=headless
export VIRTUALBOX_CPU_COUNT=1
export VIRTUALBOX_MEMORY_SIZE=512
export VIRTUALBOX_DISK_SIZE=5120

# https://kubernetes.io/docs/tasks/tools/install-kubectl/
export KUBECTL_HOME=$APP_DIR/_kubectl
export CONFIG_KUBECTL_DIR=$CONFIG_DIR/_kubectl
export KUBECONFIG=$CONFIG_KUBECTL_DIR/kubectl-config.yml
export KUBECONFIG_SAVED=$KUBECONFIG
export PATH=$PATH:$KUBECTL_HOME

# https://kubernetes.io/docs/tasks/tools/install-minikube/
export MINIKUBE_BIN=$APP_DIR/_minikube
export MINIKUBE_HOME=$DATA_DIR/_minikube
export MINIKUBE_WANTUPDATENOTIFICATION=false
export MINIKUBE_WANTREPORTERRORPROMPT=false
export CHANGE_MINIKUBE_NONE_USER=true
export PATH=$PATH:$MINIKUBE_BIN

# https://helm.sh/docs
# https://github.com/helm/helm-www
# https://github.com/helm/helm/releases
export HELM_BIN=$APP_DIR/_helm
export PATH=$PATH:$HELM_BIN

# https://github.com/mholt/caddy
# https://caddyserver.com/docs/cli
export CADDY_HOME=$APP_DIR/_caddy
export PATH=$PATH:$CADDY_HOME

# https://github.com/v2ray/v2ray-core
export V2RAY_HOME=$APP_DIR/_v2ray
export PATH=$PATH:$V2RAY_HOME

# https://docs.docker.com/engine/reference/commandline/dockerd/#daemon-socket-option
export DOCKER_HOST='tcp://127.0.0.1:2375'


# https://www.rust-lang.org/
# https://github.com/rust-lang/rustup.rs#environment-variables
export RUSTUP_HOME=$APP_DIR/_rustup
export RUSTUP_DIST_SERVER=http://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=http://mirrors.ustc.edu.cn/rust-static/rustup
# https://github.com/rust-lang/cargo/blob/master/src/doc/src/reference/environment-variables.md
export CARGO_HOME=$APP_DIR/_cargo
export PATH=$PATH:$CARGO_HOME/bin

# https://github.com/gohugoio/hugo
export HUGO_HOME=$APP_DIR/_hugo
export PATH=$PATH:$HUGO_HOME

# https://nodejs.org/en/download/
export NODE_HOME=$APP_DIR/_node
export PATH=$PATH:$NODE_HOME/bin
