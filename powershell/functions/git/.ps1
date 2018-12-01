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
        $Path = $_.FullName.ToLower()
        Write-Host "`ncd $Path" -ForegroundColor Green
        Set-Location $Path
        Write-Host "git pull --rebase" -ForegroundColor Green
        git pull --rebase
        Set-Location -Path ..
    }
}


function Git-Warn-GC () {
    Write-Host "git reflog expire --expire=now --all" -ForegroundColor Green
    git warn-expire-reflog
    Write-Host "git gc --prune=now --aggressive" -ForegroundColor Green
    git warn-gc-now
    Write-Host "git count-objects -v -H" -ForegroundColor Green
    git size
}

function Git-Warn-GC-Recurse () {
    Get-ChildItem -Attributes Directory -Path (Get-Location) | ForEach-Object {
        $Path = $_.FullName.ToLower()
        Write-Host "`ncd $Path" -ForegroundColor Green
        Set-Location $Path
        Git-Warn-GC
        Set-Location -Path ..
    }
}