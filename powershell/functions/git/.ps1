################################
# git functions
################################

# import posh-git module
function Git-ImportPoshGit () {
    Import-Module posh-git
}

# install posh-git module
function Git-InstallPoshGit () {
    Install-Module posh-git
}

# recurse git pull rebase
function Git-Pull-Rebase-Recurse () {
    Get-ChildItem -Attributes Directory -Path (Get-Location) | ForEach-Object {
       $Path = $_.FullName
       Write-Host "`ncd $Path" -ForegroundColor Green
       Set-Location $Path
       Write-Host "git pull --rebase" -ForegroundColor Green
       git pull --rebase
       Set-Location -Path ..
    }
}
