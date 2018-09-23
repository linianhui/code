## 右键菜单

1. `empty-recycle-bin.reg`：清空回收站。
2. `new-txt-file.reg`：新建文本文件。


# slmgr.vbs

```powershell
# 安装 LENOVO 许可证
slmgr -ilc LENOVO.6K2KY-BFH24-PJW6W-9GK29-TMPWP.ABE28D29811D239567F522B6B99EA85EED911A90.XRM-MS

# 导入密钥
slmgr -ipk 6K2KY-BFH24-PJW6W-9GK29-TMPWP

# 查看激活状态
slmgr -dlv
```