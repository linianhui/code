# 1 安装

1. [kubectl]的安装
2. [minikube]的安装

# 2 启动

## 2.1 Windows

Windows中需要开启Hyper-V, 并添加一个外部的虚拟交换机：`HVS`(Hyper-V Virtual Switch)。

```powershell
minikube start --vm-driver=hyperv --memory=4096 --hyperv-virtual-switch=HVS --registry-mirror=https://registry.docker-cn.com --v=9
```

## 2.2 macOS

macOS需要`virtualbox`或者`hyperkit`

```sh
minikube start --vm-driver=virtualbox --registry-mirror=https://registry.docker-cn.com --v=9
```

# 3 参考

[kubectl]

[minikube]

https://kubernetes.io/docs/setup/minikube/

[kubectl]:kubectl.md
[minikube]:minikube.md
