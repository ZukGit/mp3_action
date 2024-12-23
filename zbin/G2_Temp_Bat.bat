@ECHO off
Setlocal ENABLEDELAYEDEXPANSION
adb start-server
adb connect 192.168.1.104:41591
set ip=192.168.1.104:41591
adb devices
set device_name=""
for /F "delims=" %%i in ('adb -s 192.168.1.104:41591 shell getprop ro.product.name') do set device_name=%%i
set device_brand=""
for /F "delims=" %%i in ('adb -s 192.168.1.104:41591 shell getprop ro.product.brand') do set device_brand=%%i
echo adb start-server ^&^&^  adb connect 192.168.1.104:41591  ^&^&^ adb -s 192.168.1.104:41591 shell 
echo  _______brand[%device_brand%]_______name[%device_name%]_______ip[%ip%]_______
adb -s 192.168.1.104:41591 shell
