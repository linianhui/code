# 部署映像服务和管理
`dism.exe`(Deployment Image Servicing and Management)。用来生成、拆分、合并、安装，配置，更新[WIM]。

# `dism.exe`示例

1. `capture-image` : 捕获指定的文件夹中的文件到[WIM]文件中。
    ```powershell
    dism /capture-image /capturedir:i:\ /name:"Windows 7 Backup"  /imagefile:e:\backup.wim
    ```

2. `get-imageinfo` : 获取[WIM]文件中的`image`信息。
    ```powershell
    # *.wim *.vhd *.ffu 文件。
    dism /get-imageinfo /imagefile:d:\source.wim 
    ```

3. `apply-image` : 解压释放一个`image`中的所有文件到指定的目录。
    ```powershell
    dism /apply-image /imagefile:source.wim /index:1 /applydir:d:\source-1
    ```

4. `export-image` ：导出一个`image`到另外一个文件中。
    ```powershell
    dism /export-image /sourceimagefile:source.wim /sourceindex:1 /destinationimagefile:destination.wim
    ```

# 路径

`%systemroot%\system32\dism.exe`

# 参考

[WIM]

https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism---deployment-image-servicing-and-management-technical-reference-for-windows

https://msdn.microsoft.com/zh-cn/library/windows/hardware/dn898558(v=vs.85).aspx

[WIM]:.wim.md