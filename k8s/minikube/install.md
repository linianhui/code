# 1 安装`minikube`

## 1.1 Windows

http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.30.0/minikube-windows-amd64.exe

```powershell
Env-SetMinikubeEnvironmentVariable
```

## 1.2 Linux

http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.30.0/minikube-linux-amd64

```sh
curl -Lo minikube http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.30.0/minikube-linux-amd64 \
&& chmod +x minikube \
&& mkdir -p $HOME/_apps/_minikube \
&& mv minikube $HOME/_apps/_minikube
```

## 1.3 maxOS

http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.30.0/minikube-darwin-amd64

```sh
curl -Lo minikube http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v0.30.0/minikube-darwin-amd64 \
&& chmod +x minikube \
&& mkdir -p $HOME/_apps/_minikube \
&& mv minikube $HOME/_apps/_minikube
```

# 2 安装`driver`

## 2.1 HyperKit

https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit

```sh
curl -Lo docker-machine-driver-hyperkit https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit \
&& chmod +x docker-machine-driver-hyperkit \
&& sudo cp docker-machine-driver-hyperkit /usr/local/bin/ \
&& rm docker-machine-driver-hyperkit \
&& sudo chown root:wheel /usr/local/bin/docker-machine-driver-hyperkit \
&& sudo chmod u+s /usr/local/bin/docker-machine-driver-hyperkit
```

# 3 备注

## 3.1 Cache

1. `$MINIKUBE_HOME\cache\iso\` : https://storage.googleapis.com/minikube/iso/minikube-v0.29.0.iso
2. `$MINIKUBE_HOME\cache\localkube\` : https://storage.googleapis.com/minikube/releases/v0.28.2/localkube
3. `$MINIKUBE_HOME\cache\v1.10.0\` : https://storage.googleapis.com/kubernetes-release/release/v1.10.0/bin/linux/amd64/kubeadm
4. `$MINIKUBE_HOME\cache\v1.10.0\` : https://storage.googleapis.com/kubernetes-release/release/v1.10.0/bin/linux/amd64/kubelet

# 4 参考

[env.ps1]

[env.sh]

http://storage.googleapis.com/minikube

https://github.com/kubernetes/minikube/releases  
  1. https://storage.googleapis.com/minikube/releases/latest/minikube-windows-amd64  
  1. https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64  
  1. https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64  

https://kubernetes.io/docs/setup/minikube/

https://github.com/kubernetes/minikube/blob/master/docs/drivers.md


[env.sh]:../../shell/env.sh

[env.ps1]:../../powershell/functions/env/env.ps1
