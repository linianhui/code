################################
# git functions
################################

# get git user.name and user.email
function Git-GetUser () {
    return "$(git config user.name)/$(git config user.email)"
}

# import posh-git module
function Git-ImportPoshGit () {
    Import-Module posh-git
}

# install posh-git module
function Git-InstallPoshGit () {
    Install-Module posh-git
}
