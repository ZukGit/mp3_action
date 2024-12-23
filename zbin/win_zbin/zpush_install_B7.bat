@ECHO off
Setlocal enabledelayedexpansion
@REM ��adb.exe��ӵ�PATH��
ECHO ��ʼ����
@SET PATH=%PATH%;%CD%\Adb
@REM SET PATH

@REM ����ѭ���ı�ǩ
:LOOP
ECHO waiting device in USB
adb wait-for-device


adb root
adb remount


dir *.* /o:-d /B > ./B7_zPush_Install.txt


if exist B7_zPush_Install.txt (
  for /f "delims=" %%l  in (B7_zPush_Install.txt) do ( 
       set /a num+=1 
	   set s=%%l
if not "!s!"=="B7_zPush_Install.txt" (
@REM ECHO textFile=!s!
@REM  /system/framework/framework.jar   adb push ./framework.jar  /system/framework/framework.jar
@REM  Settings.apk             adb install -r   Settings.apk
@REM   /vendor/etc/wifi/WCNSS_qcom_cfg.ini    adb push ./WCNSS_qcom_cfg.ini  /vendor/etc/wifi/
@REM  /system/build.prop   adb push ./build.prop  /system/

@REM  ǰ5����ĸ   ��   build
@REM  ǰ8����ĸ  �� Settings
@REM  ǰ9����ĸ  �� framework
@REM  ǰ14����ĸ  �� WCNSS_qcom_cfg
set pre5=!s:~0,5!
if  "!pre5!"=="build" (
ECHO currentFile=!s!
ECHO buildFileName=!pre5!
adb push ./"!s!"  /system/build.prop
PAUSE
GOTO LOOP
)

set pre8=!s:~0,8!
if  "!pre8!"=="Settings" (
ECHO currentFile=!s!
ECHO SettingsFileName=!pre8!
adb install -r ./"!s!.apk"
PAUSE
GOTO LOOP
)

set pre9=!s:~0,9!
if  "!pre9!"=="framework" (
ECHO currentFile=!s!
ECHO frameworkFileName=!pre9!
adb push ./"!s!"  /system/framework/framework.jar
PAUSE
GOTO LOOP
)

set pre14=!s:~0,14!
if  "!pre14!"=="WCNSS_qcom_cfg" (
ECHO currentFile=!s!
ECHO WCNSS_qcom_cfg_FileName=!pre14!
adb push ./"!s!"  /vendor/etc/wifi/WCNSS_qcom_cfg.ini
PAUSE
GOTO LOOP
)


@REM ECHO Go_TO-NEXT_FOR_ITEM

)



  )
ECHO currentFile alredy install or push .
) else (
ECHO B7_zPush_Install.txt file not exist !
)





ECHO   ������
PAUSE
GOTO LOOP
@ECHO on