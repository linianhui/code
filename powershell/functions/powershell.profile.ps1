################################
# powershell profile functions
################################

function AppendScriptFile-CurrentUserPowerShellProfile ([string] $ScriptFilePath = $(throw "ScriptFilePath is null!") ) {
 
    if (!(Test-Path $ScriptFilePath)) {
        throw "$ScriptFilePath not found.";
    }

    $InvokeIndexFileExpression = ". ""$ScriptFilePath"""

    if (!(Test-Path $Profile)) {
        New-Item -Path $Profile -ItemType File -Force
        Write-Host '$Profile created.' -ForegroundColor Green
    }
    else {
        Write-Host '$Profile already existed.' -ForegroundColor Gray
    }

    $ProfileContent = Get-Content -Path $Profile
    if (!($ProfileContent -contains $InvokeIndexFileExpression)) {
        Set-Content -Path $Profile -Value "$ProfileContent`r`n$InvokeIndexFileExpression"
        Write-Host $ScriptFilePath' append to $Profile.' -ForegroundColor Green
    }
    else {
        Write-Host $ScriptFilePath' already existed in $Profile.' -ForegroundColor Gray
    }
}