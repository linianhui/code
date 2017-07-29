##################################
# current user powershell profile
#################################

# params
Param(
    [bool]$AutoAddProfile = $False
)

function Add-CurrentUserPowerShellProfile () {
    $InvokeSelfExpression = ". '$PSCommandPath'"

    # if $Profile not exist,created it. 
    if (!(Test-Path $Profile)) {
        New-Item -Path $Profile -ItemType File -Force
    }
    else {
        Write-Host "$Profile exist." -ForegroundColor Gray
    }

    $ProfileContent = Get-Content -Path $Profile
    if (!($ProfileContent -contains $InvokeSelfExpression)) {
        $ProfileContent += $InvokeSelfExpression
        Set-Content -Path $Profile -Value $ProfileContent
    }
    else {
        Write-Host "$InvokeSelfExpression exist." -ForegroundColor Gray
    }
}

if ($AutoAddProfile) {
    Add-CurrentUserPowerShellProfile
}

. "$PSScriptRoot/git-in-powershell.ps1"