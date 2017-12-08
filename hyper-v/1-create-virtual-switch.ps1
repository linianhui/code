#####################################
### Create a Virtual Switch with PowerShell
### https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/connect-to-network
#####################################

### New-VMSwitch https://docs.microsoft.com/en-us/powershell/module/hyper-v/new-vmswitch?view=win10-ps

$NetNetAdapter = (Get-NetAdapter)[0]

New-VMSwitch -Name 'External Virtual Network Switch' -NetAdapterName $NetNetAdapter.Name -AllowManagementOS $TRUE