echo off
echo.    
echo.   Be sure to enter fastboot ...
echo.   Flash logo
echo.   
pause
"_adb\fastboot.exe" flash logo logo.bin
"_adb\fastboot.exe" reboot
