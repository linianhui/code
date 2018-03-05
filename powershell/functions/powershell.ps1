################################
# powershell common functions
################################

function Test-Administrator {  
    $CurrentUser = [Security.Principal.WindowsIdentity]::GetCurrent();
    (New-Object Security.Principal.WindowsPrincipal $CurrentUser).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)  
}

function Get-DisplayUserName() {
    $DisplayUserName = "[$ENV:USERNAME]"
    if (Test-Administrator) {
        $DisplayUserName = "[$ENV:USERNAME : admin]"
    }
    return $DisplayUserName;
}

function Set-DisplayUI () {
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
}