# 1 安装`minikube`

## 1.1 Windows

http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.31.0/minikube-windows-amd64.exe

```powershell
Env-SetMinikubeEnvironmentVariable
```

## 1.2 Linux

http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.31.0/minikube-linux-amd64

```sh
curl -Lo minikube http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.31.0/minikube-linux-amd64 \
&& chmod +x minikube \
&& mkdir -p $HOME/_apps/_minikube \
&& mv minikube $HOME/_apps/_minikube
```

## 1.3 maxOS

http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.31.0/minikube-darwin-amd64

```sh
curl -Lo minikube http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.31.0/minikube-darwin-amd64 \
&& chmod +x minikube \
&& mkdir -p $HOME/_apps/_minikube \
&& mv minikube $HOME/_apps/_minikube
```

# 参考

[env.ps1]

[env.sh]

http://storage.googleapis.com/minikube

https://github.com/kubernetes/minikube/releases  
  1. https://storage.googleapis.com/minikube/releases/latest/minikube-windows-amd64  
  2. https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64  
  3. https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64  

https://kubernetes.io/docs/setup/minikube/

https://github.com/kubernetes/minikube/blob/master/docs/drivers.md


[env.sh]:../shell/env.sh

[env.ps1]:../powershell/functions/env/env.ps1
