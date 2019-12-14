# 1 安装`kubectl`

`kubectl`最新的版本号 : 
https://storage.googleapis.com/kubernetes-release/release/stable.txt

## 1.1 Windows

https://storage.googleapis.com/kubernetes-release/release/v1.16.3/bin/windows/amd64/kubectl.exe

```powershell
Env-SetKubectlEnvironmentVariable
```

## 1.2 Linux

https://storage.googleapis.com/kubernetes-release/release/v1.16.3/bin/linux/amd64/kubectl

```sh
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.16.3/bin/linux/amd64/kubectl \
&& chmod +x kubectl \
&& mkdir -p $HOME/_app/_kubectl \
&& mv kubectl $HOME/_app/_kubectl
```

## 1.3 macOS

https://storage.googleapis.com/kubernetes-release/release/v1.16.3/bin/darwin/amd64/kubectl

```sh
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.16.3/bin/darwin/amd64/kubectl \
&& chmod +x kubectl \
&& mkdir -p $HOME/_app/_kubectl \
&& mv kubectl $HOME/_app/_kubectl
```

# 2 参考

[env.ps1]

[env.sh]

https://github.com/kubernetes/kubectl

https://kubernetes.io/docs/tasks/tools/install-kubectl

[env.ps1]:../powershell/env.ps1

[env.sh]:../shell/_env.sh
