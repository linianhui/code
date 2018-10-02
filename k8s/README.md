# 1 安装

1. [kubectl]的安装
2. [minikube]的安装

# 2 启动

## 2.1 Windows

Windows中需要开启Hyper-V, 并添加一个外部的虚拟交换机：`WiFi-Switch`。

```sh
minikube start --vm-driver=hyperv --memory=4096 --hyperv-virtual-switch=WiFi-Switch --registry-mirror=https://registry.docker-cn.com --v=9
```

## 2.2 macOS

macOS需要`hyperkit`或者`virtualbox`

```sh
minikube start --vm-driver=hyperkit --registry-mirror=https://registry.docker-cn.com --v=9
```

# 3 参考

[kubectl]

[minikube]

https://kubernetes.io/docs/setup/minikube/

[kubectl]:kubectl
[minikube]:minikube