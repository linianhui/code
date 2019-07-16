# my home
export MY_HOME=$HOME
export MY_APP_HOME=$MY_HOME/_apps
export MY_CACHE_HOME=$MY_HOME/_caches

# https://docs.microsoft.com/en-us/dotnet/core/tools/telemetry
# https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-tool-install
export DOTNET_CLI_TELEMETRY_OPTOUT=false
export DOTNET_TOOLS_HOME=$HOME/.dotnet/tools
export PATH=$PATH:$DOTNET_TOOLS_HOME

# https://gradle.org/releases/ 
export GRADLE_HOME=$MY_APP_HOME/_gradle
export GRADLE_HOME_BIN=$GRADLE_HOME/bin
export GRADLE_USER_HOME=$MY_CACHE_HOME/_gradle
export PATH=$PATH:$GRADLE_HOME/bin

# https://maven.apache.org/
export MAVEN_HOME_HOME=$MY_APP_HOME/_maven
export MAVEN_HOME_BIN=$MAVEN_HOME_HOME/bin
export M2_HOME=$MAVEN_HOME_HOME
export PATH=$PATH:$MAVEN_HOME_BIN

# https://projects.spring.io/spring-boot/
export SPRING_BOOT_CLI_HOME=$MY_APP_HOME/_spring-boot-cli
export SPRING_BOOT_CLI_HOME_BIN=$SPRING_BOOT_CLI_HOME/bin
export PATH=$PATH:$SPRING_BOOT_CLI_HOME_BIN

# https://www.mono-project.com/
export MONO_HOME=/Library/Frameworks/Mono.framework/Versions/5.0.1
export MONO_HOME_BIN=$MONO_HOME/bin
export PATH=$PATH:$MONO_HOME_BIN

# https://docs.docker.com/machine/
# https://docs.docker.com/machine/drivers/virtualbox/
export DOCKER_HOME=$MY_APP_HOME/_docker
export VIRTUALBOX_BOOT2DOCKER_URL=$DOCKER_HOME/boot2docker.iso
export MACHINE_STORAGE_PATH=$MY_CACHE_HOME/_docker
export VIRTUALBOX_UI_TYPE=headless
export VIRTUALBOX_CPU_COUNT=1
export VIRTUALBOX_MEMORY_SIZE=512
export VIRTUALBOX_DISK_SIZE=5120

# https://kubernetes.io/docs/tasks/tools/install-kubectl/
export KUBECTL_HOME=$MY_APP_HOME/_kubectl
export KUBECONFIG=$KUBECTL_HOME/kubectl.config
export KUBECONFIG_SAVED=$KUBECONFIG
export PATH=$PATH:$KUBECTL_HOME

# https://kubernetes.io/docs/tasks/tools/install-minikube/
export MINIKUBE_BIN=$MY_APP_HOME/_minikube
export MINIKUBE_HOME=$MY_CACHE_HOME/_minikube
export MINIKUBE_WANTUPDATENOTIFICATION=false
export MINIKUBE_WANTREPORTERRORPROMPT=false
export CHANGE_MINIKUBE_NONE_USER=true
export PATH=$PATH:$MINIKUBE_BIN

# https://docs.helm.sh/using_helm/#installing-helm
export HELM_HOME=$MY_APP_HOME/_helm
export PATH=$PATH:$HELM_HOME

# https://github.com/mholt/caddy
# https://caddyserver.com/docs/cli
export CADDY_HOME=$MY_APP_HOME/_caddy
export CADDYPATh=$MY_CACHE_HOME/_caddy
export PATH=$PATH:$CADDY_HOME

# https://github.com/v2ray/v2ray-core
export V2RAY_HOME=$MY_APP_HOME/_v2ray
export PATH=$PATH:$V2RAY_HOME

# https://docs.docker.com/engine/reference/commandline/dockerd/#daemon-socket-option
export DOCKER_HOST='tcp://127.0.0.1:2375'
