# Install Visual Studio 2017

下载离线安装包 : 
```powershell
./vs_community.exe `
  --layout f:\vs_community_2017 `
  --lang en-US `
  --includeRecommended `
  --includeOptional `
  --add Microsoft.VisualStudio.Component.CoreEditor `
  --add Microsoft.VisualStudio.Workload.ManagedDesktop `
  --add Microsoft.VisualStudio.Workload.NetCoreTools `
  --add Microsoft.VisualStudio.Workload.NetWeb `
  --add Microsoft.VisualStudio.Workload.ManagedDesktopBuildTools `
  --add Microsoft.VisualStudio.Workload.MSBuildTools `
  --add Microsoft.VisualStudio.Workload.NetCoreBuildTools `
  --add Microsoft.VisualStudio.Workload.WebBuildTools `
  --add Component.GitHub.VisualStudio `
  --add Microsoft.Component.HelpViewer `
  --add Microsoft.VisualStudio.Component.DependencyValidation.Community `
  --add Microsoft.VisualStudio.Component.GraphDocument `
  --add Microsoft.VisualStudio.Component.LinqToSql `
  --add Microsoft.VisualStudio.Component.TestTools.MicrosoftTestManager 
```

# 参考

vs_community.exe : https://aka.ms/vs/15/release/vs_community.exe

Use command-line parameters to install Visual Studio 2017 : https://docs.microsoft.com/en-us/visualstudio/install/use-command-line-parameters-to-install-visual-studio

Visual Studio 2017 workload and component IDs : https://docs.microsoft.com/en-us/visualstudio/install/workload-and-component-ids?view=vs-2017

Visual Studio Community 2017 component directory : https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-community?view=vs-2017