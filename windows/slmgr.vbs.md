# 软件授权管理

`slmgr.vbs`(Software License Manager Script)是Windows Vista及后续版本中用来管理系统激活和密钥、证书的命令行工具。

## OEM激活

```powershell
# 安装 LENOVO 许可证
slmgr.vbs -ilc LENOVO.6K2KY-BFH24-PJW6W-9GK29-TMPWP.ABE28D29811D239567F522B6B99EA85EED911A90.XRM-MS

# 导入密钥
slmgr.vbs -ipk 6K2KY-BFH24-PJW6W-9GK29-TMPWP

# 查看激活状态
slmgr.vbs -dlv
```

# 路径

`%systemroot%\system32\slmgr.vbs`

# 参考
https://technet.microsoft.com/en-us/library/ff793433.aspx

https://docs.microsoft.com/en-us/deployoffice/vlactivation/tools-to-manage-volume-activation-of-office