# 1 安装`minikube`

## 1.1 Windows

https://storage.googleapis.com/minikube/releases/latest/minikube-windows-amd64

```powershell
Env-SetMinikubeEnvironmentVariable
```

## 1.2 Linux

https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

```sh
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
&& chmod +x minikube \
&& mkdir -p $HOME/.app/.tools/.minikube \
&& mv minikube $HOME/.app/.tools/.minikube
```

## 1.3 maxOS

https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64

```sh
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 \
&& chmod +x minikube \
&& mkdir -p $HOME/.app/.tools/.minikube \
&& mv minikube $HOME/.app/.tools/.minikube
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

https://kubernetes.io/docs/setup/minikube/

https://github.com/kubernetes/minikube/blob/master/docs/drivers.md


[env.sh]:../../shell/env.sh

[env.ps1]:../../powershell/functions/env/env.ps1
