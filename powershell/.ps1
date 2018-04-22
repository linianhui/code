#####################################################
# current user powershell profile entry script file.
#####################################################

# params
Param(
    [switch]$Init = $False
)

Get-ChildItem -Path "$PSScriptRoot/functions/" -Recurse -File | Foreach-Object { . $_.FullName }

if ($Init) {

    Profile-AddScriptFile -ProfilePath $PROFILE -ScriptFilePath $PSCOMMANDPATH

    Git-SetGlobalAlias
    
    Git-SetGlobalConfig -UserName 'lnh' -UserEmail 'lnhcode@outlook.com'

    Git-GetGlobalConfig
}

Git-ImportPoshGit

UI-SetDisplayOptions
