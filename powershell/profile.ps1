﻿################################
# powershell profile functions
################################

function script:Profile-New(
    [string] $ProfilePath = $(throw "ProfilePath is null!")
) {
    if (Test-Path $ProfilePath) {
        Log-Info "# $ProfilePath already existed."
    }
    else {        
        New-Item -Path $Profile -ItemType File -Force
        Log-Debug "# Create [$ProfilePath] succeed."
    }
}

function Profile-AddScriptExpression (
    [string] $ProfilePath = $(throw "ProfilePath is null!"), 
    [string] $ScriptExpression = $(throw "ScriptExpression is null!") 
) {
    Profile-New -ProfilePath $ProfilePath

    $ProfileContent = Get-Content -Path $ProfilePath
    if ($ProfileContent -contains $ScriptExpression) {
        Log-Info "# [$ScriptExpression] already existed in $ProfilePath."
    }
    else {
        Set-Content -Path $ProfilePath -Value "$ProfileContent`r`n$ScriptExpression"
        Log-Debug "# [$ScriptExpression] append to $ProfilePath."
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