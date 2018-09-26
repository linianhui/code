# 创建或修复[BCD]

`bcdboot.exe`是[Vista]引入的一个用于管理[BCD]的命令行工具。它把小部分启动环境文件从已安装的Windows中复制到系统分区。

# `bcdboot.exe`示例

```powershell
# 设置或修复启动菜单 : 添加c盘的win10系统到启动菜单，如果已存在则忽略，否则进行修复或新增。
bcdboot c:\windows

# 设置或修复双启动菜单 : 添加d盘的win7系统到启动菜单，和上例中的win10形成双启动菜单。
bcdboot d:\windows
```

# 路径

`%systemroot%\system32\bcdboot.exe`

# 参考

[Vista]

[BCD]

https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/bcdboot-command-line-options-techref-di

https://msdn.microsoft.com/zh-cn/library/windows/hardware/dn898490(v=vs.85).aspx

[Vista]:https://zh.wikipedia.org/wiki/Windows_Vista
[BCD]:bcd.md