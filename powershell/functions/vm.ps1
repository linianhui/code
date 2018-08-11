################################
# powershell vm(hyper-v) functions
################################

function vm () {
    Get-VM
}

function vm-run ([string] $name) {
    Get-VM -Name $name | Start-VM

    Get-VM -Name $name
}

function vm-stop ([string] $name) {
    Get-VM -Name $name | Stop-VM

    Get-VM -Name $name
}

function ubts () {
    run-vm-and-open-ssh -username lnh -hostname ubts
}

function ceos () {
    run-vm-and-open-ssh -username lnh -hostname ceos
}

function run-vm-and-open-ssh (
    [string]$username,
    [string]$hostname,
    [string]$port = 22) {

    Write-Host "run [$hostname] hyper-v vm" -ForegroundColor Green
    vm-run -name $hostname

    Write-Host "ssh $username@$hostname -p $port" -ForegroundColor Green
    ssh "$username@$hostname" -p $port
}
