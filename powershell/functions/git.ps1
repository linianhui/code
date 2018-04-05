################################
# git functions
################################

# get git user.name and user.email
function Get-GitUser () {
    return "$(git config user.name)/$(git config user.email)"
}

# use git in powershell
function Use-Git () {
    Import-Module posh-git
}
