################################
# powershell vm(hyper-v) functions
################################

function VM-Start ([string] $name) {
    Get-VM -Name $name | Start-VM
}

function VM-Stop ([string] $name) {
    Get-VM -Name $name | Stop-VM
}

