#####################################################
# current user powershell profile entry script file.
#####################################################

# params
Param(
    [switch]$Init = $False
)

@(
    '/log.ps1',
    '/env.ps1',
    '/env-set.ps1',
    '/file.ps1',
    '/git.ps1',
    '/git-config.ps1',
    '/git-bigfile.ps1',
    '/github.ps1',
    '/gui.ps1',
    '/hosts.ps1',
    '/profile.ps1',
    '/prompt.ps1',
    '/sln.ps1',
    '/ui.ps1',
    '/vm.ps1',
    '/http.ps1',
    '/yaml.ps1',
    '/alias.ps1'
) | Foreach-Object { . "$PSScriptRoot$_" }

if ($Init) {

    Profile-AddScriptFile -ProfilePath $PROFILE -ScriptFilePath $PSCOMMANDPATH

    Git-SetGlobalAlias

    Git-SetGlobalConfig

    Git-SetGlobalUser -UserName 'lnh' -UserEmail 'lnhcode@outlook.com'

    Git-GetConfig

    Update-Help
}

Git-ImportPoshGit

UI-SetDisplayOptions
