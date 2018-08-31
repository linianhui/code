# kindlegen

1. help : https://www.amazon.com/gp/feature.html?docId=1000765211
2. windows : http://kindlegen.s3.amazonaws.com/kindlegen_win32_v2_9.zip

# epub to mobi

```bat
@echo off

for %%i in (*.epub) do kindlegen "%%i" -verbose

pause
```