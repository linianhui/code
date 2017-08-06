echo off
echo.    
echo.   Be sure to enter fastboot ...
echo.   Flash recovery
echo.   
pause
"_adb\fastboot.exe" flash recovery recovery.img
"_adb\fastboot.exe" reboot-bootloader