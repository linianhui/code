﻿################################
# powershell ui functions
################################

function script:Test-Administrator {  
    $CurrentUser = [Security.Principal.WindowsIdentity]::GetCurrent();
    $CurrentPrincipal = New-Object Security.Principal.WindowsPrincipal $CurrentUser;
    return $CurrentPrincipal.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)  
}

function script:UI-GetUserName() {
    return $ENV:USERNAME
}

function UI-GetUserPrompt() {
    $Role = '$'
    $UserName = $ENV:USERNAME
    $ComputerName = $ENV:COMPUTERNAME.ToLower()
    $CurrentPath = $(Get-Location).ToString().ToLower()
    if (Test-Administrator) {
        $Role = '#'
    }

    return @{
        Prefix       = $Role;
        UserName     = $UserName;
        ComputerName = $ComputerName;
        Text         = "$Role $UserName@$ComputerName $CurrentPath"
    }
}

function UI-SetDisplayOptions () {
    $Host.UI.RawUI.WindowPosition.X = 0;
    $Host.UI.RawUI.WindowPosition.Y = 0;

    $Host.UI.RawUI.BufferSize.Width = 80;
    $Host.UI.RawUI.BufferSize.Height = 2000;

    $Host.UI.RawUI.WindowSize.Width = 80;
    $Host.UI.RawUI.WindowSize.Height = 40;

    $Host.UI.RawUI.MaxWindowSize.Width = 80;
    $Host.UI.RawUI.MaxWindowSize.Height = 40;

    $Host.UI.RawUI.ForegroundColor = "White";
    $Host.UI.RawUI.BackgroundColor = "Black";
    
    $ENV:LC_ALL = 'C.UTF-8';
}
