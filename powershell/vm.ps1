################################
# powershell vm(hyper-v) functions
################################

function vm ([string] $name) {
    if ([String]::IsNullOrEmpty($name)) {
        Get-VM
    }
    else {
        Get-VM -Name $name
    }
}

function vm-run ([string] $name) {
    Get-VM -Name $name | Start-VM
}

function vm-stop ([string] $name) {
    Get-VM -Name $name | Stop-VM
}

function vm-ssh (
    [string]$username,
    [string]$hostname,
    [string]$port = 22) {

    Write-Host "run [$hostname] hyper-v vm" -ForegroundColor Green
    vm-run -name $hostname

    Write-Host "ssh $username@$hostname -p $port" -ForegroundColor Green
    ssh "$username@$hostname" -p $port
}

function ubts () {
    vm-ssh -username lnh -hostname ubts
}

function ceos () {
    vm-ssh -username lnh -hostname ceos
}