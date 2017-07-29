##################################
# current user powershell profile
#################################

$InvokeSelfExpression = ". '$PSCommandPath'"

# if $Profile not exist,created it. 
if (!(Test-Path $Profile)) {
    New-Item -Path $Profile -ItemType File -Force
}

$ProfileContent = Get-Content -Path $Profile
if (!($ProfileContent -contains $InvokeSelfExpression)) {
    $ProfileContent += $InvokeSelfExpression
    Set-Content -Path $Profile -Value $ProfileContent
}

. "$PSScriptRoot/git-in-powershell.ps1"