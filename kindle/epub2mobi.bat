@echo off

for %%i in (*.epub) do kindlegen "%%i" -verbose

pause
