#####################################
### Create a virtual hard disk with PowerShell
### New-VHD https://docs.microsoft.com/en-us/powershell/module/hyper-v/new-vhd?view=win10-ps
#####################################

$VHDFilePath = "d:\test.vhdx"

New-VHD -Path $VHDFilePath -Dynamic -SizeBytes 32GB