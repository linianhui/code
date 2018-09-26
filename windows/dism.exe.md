# 部署映像服务和管理
`dism.exe`(Deployment Image Servicing and Management)。用来生成、拆分、合并、安装，配置，更新[WIM]。

# `dism.exe`示例

1. 获取[WIM]文件中的`image`信息。
    ```powershell
    # *.wim 文件。
    dism /get-wiminfo /wimfile:d:\source.wim

    # *.wim *.vhd *.ffu 文件。
    dism /get-imageinfo /imagefile:d:\source.wim 
    ```
2. 导出`image`到另外一个文件中。
    ```powershell
    dism /export-image /sourceimagefile:source.wim /sourceindex:1 /destinationimagefile:destination.wim
    ```
3. 应用一个`image`到指定的目录（解压释放出`image`中的文件）。
    ```powershell
    dism /apply-image /imagefile:source.wim /index:1 /applydir:d:\source-1
    ```

# 路径

`%systemroot%\system32\dism.exe`

# 参考

[WIM]

https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism---deployment-image-servicing-and-management-technical-reference-for-windows

https://msdn.microsoft.com/zh-cn/library/windows/hardware/dn898558(v=vs.85).aspx

[WIM]:.wim.md