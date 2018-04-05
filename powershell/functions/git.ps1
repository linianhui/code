################################
# git functions
################################

# get git user.name and user.email
function Git-GetUser () {
    return "$(git config user.name)/$(git config user.email)"
}

# use git in powershell
function Git-ImportPosh () {
    Import-Module posh-git
}
