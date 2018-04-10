################################
# powershell profile functions
################################

function script:Profile-New(
    [string] $ProfilePath = $(throw "ProfilePath is null!")
) {
    if (Test-Path $ProfilePath) {
        Write-Host "# $ProfilePath already existed." -ForegroundColor Gray
    }
    else {        
        New-Item -Path $Profile -ItemType File -Force
        Write-Host "# Create [$ProfilePath] succeed." -ForegroundColor Green
    }
}

function Profile-AddScriptExpression (
    [string] $ProfilePath = $(throw "ProfilePath is null!"), 
    [string] $ScriptExpression = $(throw "ScriptExpression is null!") 
) {
    Profile-New -ProfilePath $ProfilePath

    $ProfileContent = Get-Content -Path $ProfilePath
    if ($ProfileContent -contains $ScriptExpression) {
        Write-Host "# [$ScriptExpression] already existed in $ProfilePath." -ForegroundColor Gray
    }
    else {
        Set-Content -Path $ProfilePath -Value "$ProfileContent`r`n$ScriptExpression"
        Write-Host "# [$ScriptExpression] append to $ProfilePath." -ForegroundColor Green
    }
}

function Profile-AddScriptFile (
    [string] $ProfilePath = $(throw "ProfilePath is null!"),
    [string] $ScriptFilePath = $(throw "ScriptFilePath is null!")
) {
    if (!(Test-Path $ScriptFilePath)) {
        throw "$ScriptFilePath not found."
    }

    Profile-AddScriptExpression -ProfilePath $ProfilePath -ScriptExpression ". ""$ScriptFilePath"""
}