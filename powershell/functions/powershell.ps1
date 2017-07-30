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