#####################################################
# current user powershell profile entry script file.
#####################################################

# params
Param(
    [switch]$Init = $False
)

Get-ChildItem "$PSScriptRoot/functions" | Foreach-Object {. $_.FullName}

Get-ChildItem "$PSScriptRoot/lnh.*.ps1"  | Foreach-Object {. $_.FullName}

if ($Init) {

    Profile-AddScriptFile -ProfilePath $PROFILE -ScriptFilePath $PSCOMMANDPATH

    Git-SetGlobalAlias
    
    Git-SetGlobalConfig -UserName 'lnh' -UserEmail 'lnhcode@outlook.com'

    Git-GetGlobalConfig
}

Git-ImportPosh

UI-SetDisplayOptions
