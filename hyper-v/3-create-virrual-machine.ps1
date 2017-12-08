
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