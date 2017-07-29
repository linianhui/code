##################################
# current user powershell profile
#################################

# params
Param(
    [bool]$Reset = $False
)

Get-ChildItem "$PSScriptRoot/functions" | Foreach-Object {. $_.FullName}

if ($Reset) {
    
    AppendScriptFile-CurrentUserPowerShellProfile -ScriptFilePath $PSCommandPath

    Set-GitGlobalAlias
    
    Set-GitGlobalConfig -UserName 'lnh' -UserEmail 'lnhcode@outlook.com'

    Get-GitGlobalConfig
}

Use-Git