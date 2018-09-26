# 编辑[BCD]

`bcdedit.exe`是[Vista]引入的一个用于管理[BCD]的命令行工具。用来创建新存储、修改现有存储以及添加启动菜单选项等等。

# `bcdedit.exe`示例

```powershell
# 显示帮助信息。
bcdedit /? <command>

# 列出所有的启动项
bcdedit /emun /v

# 导出当前系统的启动配置数据到d盘。
bcdedit /export d:\bcd-backup

# 设置默认启动菜单的超时时间为5秒。
bcdedit /timeout 5
```

# 路径

`%systemroot%\system32\bcdedit.exe`

# 参考

[Vista]

[BCD]

https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/bcdedit-command-line-options

https://msdn.microsoft.com/zh-cn/library/windows/hardware/mt450468(v=vs.85).aspx

[Vista]:https://zh.wikipedia.org/wiki/Windows_Vista
[BCD]:bcd.md