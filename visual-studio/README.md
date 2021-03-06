# Install Visual Studio

下载离线安装包 : `vs_community.exe --layout d:\vs_community`。

## Visual Studio Community
```powershell
./vs_community.exe `
  --layout d:\vs_community `
  --lang en-US `
  --includeRecommended `
  --includeOptional `
  --add Microsoft.VisualStudio.Workload.CoreEditor `
  --add Microsoft.VisualStudio.Workload.ManagedDesktop `
  --add Microsoft.VisualStudio.Workload.NetCoreTools `
  --add Microsoft.VisualStudio.Workload.NetWeb `
  --add Microsoft.VisualStudio.Workload.VisualStudioExtension `
  --add Microsoft.VisualStudio.Component.Git `
  --add Component.GitHub.VisualStudio `
  --add Microsoft.Component.HelpViewer `
  --add Microsoft.VisualStudio.Component.DependencyValidation.Community `
  --add Microsoft.VisualStudio.Component.GraphDocument `
  --add Microsoft.VisualStudio.Component.LinqToSql
```

## Visual Studio Build Tools

```powershell
./vs_buildtools.exe `
  --layout d:\vs_buildtools `
  --lang en-US `
  --includeRecommended `
  --includeOptional `
  --add Microsoft.VisualStudio.Workload.ManagedDesktopBuildTools `
  --add Microsoft.VisualStudio.Workload.MSBuildTools `
  --add Microsoft.VisualStudio.Workload.NetCoreBuildTools `
  --add Microsoft.VisualStudio.Workload.WebBuildTools
```

# 参考

https://visualstudio.microsoft.com/downloads/

https://visualstudio.microsoft.com/vs/compare/

https://docs.microsoft.com/en-us/visualstudio/install/create-an-offline-installation-of-visual-studio?view=vs-2019

https://docs.microsoft.com/en-us/visualstudio/install/workload-and-component-ids?view=vs-2019

https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-community?view=vs-2019