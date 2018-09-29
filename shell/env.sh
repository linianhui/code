# my home
export MY_HOME=$HOME
export MY_APP_HOME=$MY_HOME/_apps
export MY_CACHE_HOME=$MY_HOME/_caches

# https://docs.microsoft.com/en-us/dotnet/core/tools/telemetry
# https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-tool-install
export DOTNET_CLI_TELEMETRY_OPTOUT=false
export DOTNET_TOOLS_HOME=$HOME/.dotnet/tools

# https://gradle.org/releases/ 
export GRADLE_HOME=$MY_APP_HOME/_gradle
export GRADLE_HOME_BIN=$GRADLE_HOME/bin
export GRADLE_USER_HOME=$MY_CACHE_HOME/_gradle

# https://maven.apache.org/
export M2_HOME=$MY_APP_HOME/_maven
export M2_HOME_BIN=$M2_HOME/bin

# https://projects.spring.io/spring-boot/
export SPRING_BOOT_CLI_HOME=$MY_APP_HOME/_spring-boot-cli
export SPRING_BOOT_CLI_HOME_BIN=$SPRING_BOOT_CLI_HOME/bin

# https://www.mono-project.com/
export MONO_HOME=/Library/Frameworks/Mono.framework/Versions/5.0.1
export MONO_HOME_BIN=$MONO_HOME/bin

# https://kubernetes.io/docs/tasks/tools/install-kubectl/
export KUBECTL_HOME=$MY_APP_HOME/_kubectl
export KUBECONFIG=$KUBECTL_HOME/config
export KUBECONFIG_SAVED=$KUBECONFIG

# https://kubernetes.io/docs/tasks/tools/install-minikube/
export MINIKUBE_HOME=$MY_APP_HOME/_minikube
export MINIKUBE_WANTUPDATENOTIFICATION=false
export MINIKUBE_WANTREPORTERRORPROMPT=false
export CHANGE_MINIKUBE_NONE_USER=true

# https://docs.helm.sh/using_helm/#installing-helm
export HELM_HOME=$MY_APP_HOME/_helm

# path
export PATH=$GRADLE_HOME_BIN:$M2_HOME_BIN:$SPRING_BOOT_CLI_HOME_BIN:$KUBECTL_HOME:$MINIKUBE_HOME:$HELM_HOME:$DOTNET_TOOLS_HOME:$PATH
