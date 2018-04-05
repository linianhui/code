#####################################################
# current user powershell profile entry script file.
#####################################################

# params
Param(
    [switch]$Init = $False
)

Get-ChildItem "$PSScriptRoot/functions" | Foreach-Object {. $_.FullName}

Get-ChildItem "$PSScriptRoot/i.*.ps1"  | Foreach-Object {. $_.FullName}

if ($Init) {

    Add-ScriptFileToProfile -ProfilePath $PROFILE -ScriptFilePath $PSCOMMANDPATH

    Set-GitGlobalAlias
    
    Set-GitGlobalConfig -UserName 'lnh' -UserEmail 'lnhcode@outlook.com'

    Get-GitGlobalConfig
}

Use-Git

Set-DisplayUI
