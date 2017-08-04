#####################################################
# current user powershell profile entry script file.
#####################################################

# params
Param(
    [switch]$Reset = $False
)

Get-ChildItem "$PSScriptRoot/functions" | Foreach-Object {. $_.FullName}

if ($Reset) {

    Add-ScriptFileToProfile -ProfilePath $PROFILE -ScriptFilePath $PSCOMMANDPATH

    Set-GitGlobalAlias
    
    Set-GitGlobalConfig -UserName 'lnh' -UserEmail 'lnhcode@outlook.com'

    Get-GitGlobalConfig
}

Use-Git