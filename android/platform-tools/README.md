# platform tools
1. help page : https://developer.android.com/studio/releases/platform-tools.html
2. for windows : https://dl.google.com/android/repository/platform-tools-latest-windows.zip

# adb
`adb reboot bootloader`

`adb reboot recovery`

`adb sideload rom.zip`

`adb push rom.zip /sdcard/0/`

# fastboot
`fastboot flash recovery recovery.img`

`fastboot flash logo logo.bin`

# wifi
7.0 `settings put global captive_portal_server captive.v2ex.co`

7.1 `settings put global captive_portal_https_url https://captive.v2ex.co/generate_204`
