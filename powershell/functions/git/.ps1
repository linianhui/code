################################
# git functions
################################

# get git user.name and user.email
function Git-GetUser () {
    $GitUserName = git config user.name
    $GitUserEmail = git config user.email
    return "$GitUserName<$GitUserEmail>"
}

# import posh-git module
function Git-ImportPoshGit () {
    Import-Module posh-git
}

# install posh-git module
function Git-InstallPoshGit () {
    Install-Module posh-git
}
