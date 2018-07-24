################################
# git config functions
################################

# set global config : alias
function Git-SetGlobalAlias () {

    # checkout
    git config --global alias.co checkout

    # commit
    git config --global alias.ci commit
    git config --global alias.alc 'commit --amend --no-edit'

    # status
    git config --global alias.st 'status --short --branch'

    # branch
    git config --global alias.br branch

    # pull
    git config --global alias.pr 'pull --rebase'

    # merge
    git config --global alias.mnf 'merge --no-ff'

    # diff
    git config --global alias.d diff
    git config --global alias.dt difftool

    # cherry-pick
    git config --global alias.cp cherry-pick

    # log
    git config --global alias.last 'log -1'
    git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

    # count-objects
    git config --global alias.size 'count-objects -v -H'

    # reflog
    git config --global alias.rl "reflog --format='%cd %h %gs' --date=format:'%Y-%m-%d %H:%M:%S'"
    
    # gc 
    git config --global alias.warn-expire-reflog "reflog expire --expire=now --all"
    git config --global alias.warn-gc-now "gc --prune=now --aggressive"
}

# set global config
function Git-SetGlobalConfig () {

    # gui
    git config --global gui.encoding 'utf-8'
    
    # i18n
    git config --global i18n.commitencoding 'utf-8'
    git config --global core.quotepath false
    
    # editor
    git config --global core.editor "code -w"
    git config --global core.autocrlf false

    # color
    git config --global color.ui true
    
    # branch pager
    git config --global pager.branch false
}

# set git global user
function Git-SetGlobalUser (
    [string] $UserName = $(throw "UserName is null!"), 
    [string] $UserEmail = $(throw "UserEmail is null!")
) {

    git config --global user.name $UserName
    git config --global user.email $UserEmail
}

# get git user
function Git-GetCurrentUser () {

    $UserName = git config user.name
    $UserEmail = git config user.email
    return "$UserName<$UserEmail>"
}

# git get config
function Git-GetConfig ([string]$Name) {
    if ($Name) {
        $Values = git config --get-all $Name
        $LocalValues = git config --get-all --local $Name
        $GlobalValues = git config --get-all --global $Name
        $SystemValues = git config --get-all --system $Name

        Write-Host "name   : $Name" -ForegroundColor Green
        Write-Host "value  : $Values" -ForegroundColor Green
        Write-Host "local  : $LocalValues" -ForegroundColor Green
        Write-Host "global : $GlobalValues" -ForegroundColor Green
        Write-Host "system : $SystemValues" -ForegroundColor Green
    }
    else {
        git config --list | Sort-Object
    }
}
