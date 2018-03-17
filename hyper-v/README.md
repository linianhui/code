# Hyper-V

https://docs.microsoft.com/en-us/virtualization/index#pivot=main&panel=server

https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/hyper-v-on-windows-server

https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/plan/should-i-create-a-generation-1-or-2-virtual-machine-in-hyper-v

https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/deploy/export-and-import-virtual-machines

https://docs.microsoft.com/en-us/windows-server/administration/performance-tuning/role/hyper-v-server/

# PowerShell

https://technet.microsoft.com/library/hh848559.aspx

# Command

## Enable Hyper-V

https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v#enable-hyper-v-using-powershell

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName:Microsoft-Hyper-V -All
```

## Create virtual switch

https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/connect-to-network
https://docs.microsoft.com/en-us/powershell/module/hyper-v/new-vmswitch?view=win10-ps

```powershell
$NetNetAdapter = (Get-NetAdapter)[0]
New-VMSwitch -Name 'External Virtual Network Switch' -NetAdapterName $NetNetAdapter.Name -AllowManagementOS $TRUE
```

## Create virtual hard disk

https://docs.microsoft.com/en-us/powershell/module/hyper-v/new-vhd?view=win10-ps

```powershell
$VHDFilePath = 'd:\test.vhdx'
New-VHD -Path $VHDFilePath -Dynamic -SizeBytes 32GB
```

## Create virtual machine

```powershell
$VMName = 'test_vm'
$VMPath = "d:\$VMName"
$VMSwitch = 'External Virtual Network Switch'
$InstallMedia = 'd:\en_windows_server_2016_x64_dvd_9718492.iso'
$VHDFilePath = 'd:\test.vhdx'

# Create New Virtual Machine
New-VM -Name $VMName -Generation 2 -VHDPath $VHDFilePath -SwitchName $VMSwitch -MemoryStartupBytes 2147483648 -Path $VMPath

# Add DVD Drive to Virtual Machine
Add-VMScsiController -VMName $VMName
Add-VMDvdDrive -VMName $VMName -ControllerNumber 1 -ControllerLocation 0 -Path $InstallMedia

# Mount Installation Media
$DVDDrive = Get-VMDvdDrive -VMName $VMName

# Configure Virtual Machine to Boot from DVD
Set-VMFirmware -VMName $VMName -FirstBootDevice $DVDDrive
```