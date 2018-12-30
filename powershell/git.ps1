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
        Log-Debug "`ncd $Path"
        Set-Location $Path
        Log-Debug "git pull --rebase"
        git pull --rebase
        Set-Location -Path ..
    }
}


function Git-Warn-GC () {
    Log-Debug "git reflog expire --expire=now --all"
    git warn-expire-reflog
    Log-Debug "git gc --prune=now --aggressive"
    git warn-gc-now
    Log-Debug "git count-objects -v -H"
    git size
}

function Git-Warn-GC-Recurse () {
    Get-ChildItem -Attributes Directory -Path (Get-Location) | ForEach-Object {
        $Path = $_.FullName.ToLower()
        Log-Debug "`ncd $Path"
        Set-Location $Path
        Git-Warn-GC
        Set-Location -Path ..
    }
}

function Git-Size-Recurse () {
    Get-ChildItem -Attributes Directory -Path (Get-Location) | ForEach-Object {
        $Path = $_.FullName.ToLower()
        Log-Debug "`ngit -C '$Path' count-objects -v -H"
        git -C "$Path" size
    }
}