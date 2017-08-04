################################
# git config functions
################################

# set git global config : alias
function Set-GitGlobalAlias () {
    
    # checkout
    git config --global alias.co checkout
    
    # commit
    git config --global alias.ci commit
    git config --global alias.alc 'commit --amend --no-edit'
    
    # status
    git config --global alias.st status

    # branch
    git config --global alias.br branch

    # pull
    git config --global alias.pr 'pull --rebase'

    # pull
    git config --global alias.mnf 'merge --no-ff'

    # diff
    git config --global alias.d diff
    git config --global alias.dt difftool
    
    # cherry-pick
    git config --global alias.cp cherry-pick

    # log
    git config --global alias.last 'log -1'
    git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    
}

# set global config
function Set-GitGlobalConfig (
    [string] $UserName = $(throw "UserName is null!"), 
    [string] $userEmail = $(throw "UserEmail is null!")
) {
    # gui
    git config --global gui.encoding 'utf-8'
    
    # i18n
    git config --global i18n.commitencoding 'utf-8'
    
    # editor
    git config --global core.editor "code -w"

    # user
    git config --global user.name $UserName
    git config --global user.email $UserEmail
}

# get global config
function Get-GitGlobalConfig() {
    # show global config
    git config --global --list
}

# get git user.name and user.email
function Get-GitUser () {
    return "$(git config user.name)/$(git config user.email)"
}

# use git in powershell
function Use-Git () {
    Import-Module posh-git
}