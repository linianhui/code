################################
# powershell profile functions
################################

function script:New-Profile(
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

function Add-ScriptExpressionToProfile (
    [string] $ProfilePath = $(throw "ProfilePath is null!"), 
    [string] $ScriptExpression = $(throw "ScriptExpression is null!") 
) {
    New-Profile -ProfilePath $ProfilePath

    $ProfileContent = Get-Content -Path $ProfilePath
    if ($ProfileContent -contains $ScriptExpression) {
        Write-Host "# [$ScriptExpression] already existed in $ProfilePath." -ForegroundColor Gray
    }
    else {
        Set-Content -Path $ProfilePath -Value "$ProfileContent`r`n$ScriptExpression"
        Write-Host "# [$ScriptExpression] append to $ProfilePath." -ForegroundColor Green
    }
}

function Add-ScriptFileToProfile (
    [string] $ProfilePath = $(throw "ProfilePath is null!"),
    [string] $ScriptFilePath = $(throw "ScriptFilePath is null!")
) {
    if (!(Test-Path $ScriptFilePath)) {
        throw "$ScriptFilePath not found."
    }

    Add-ScriptExpressionToProfile -ProfilePath $ProfilePath -ScriptExpression ". ""$ScriptFilePath"""
}