################################
# powershell profile functions
################################

function AppendScriptFile-CurrentUserPowerShellProfile ([string] $ScriptFilePath = $(throw "ScriptFilePath is null!") ) {
    if (!(Test-Path $ScriptFilePath)) {
        throw "$ScriptFilePath not found."
    }

    if (Test-Path $Profile) {
        Write-Host '$Profile already existed.' -ForegroundColor Gray
    }
    else {        
        New-Item -Path $Profile -ItemType File -Force
        Write-Host '$Profile created.' -ForegroundColor Green
    }

    $InvokeScriptFileExpression = ". ""$ScriptFilePath"""
    $ProfileContent = Get-Content -Path $Profile
    if ($ProfileContent -contains $InvokeScriptFileExpression) {
        Write-Host $ScriptFilePath' already existed in $Profile.' -ForegroundColor Gray
    }
    else {
        Set-Content -Path $Profile -Value "$ProfileContent`r`n$InvokeScriptFileExpression"
        Write-Host $ScriptFilePath' append to $Profile.' -ForegroundColor Green
    }
}