@ECHO off
Setlocal ENABLEDELAYEDEXPANSION
set cur_path=%cd%

set input_path_1=%1
if "%1"=="" (
echo ����Ĳ�����ַ������ ���򿪱���·���ļ���
explorer.exe %cur_path%
) else (

set first_two_char=!input_path_1:~0,2!
set rest_path=!input_path_1:~1!
set fixed_first_two_char=!first_two_char!

if "!first_two_char!" == ".\" (
set compare_path=!cur_path:~2!
echo ���·�� %cur_path%!rest_path!
explorer.exe %cur_path%!rest_path!
) else (
echo ����·�� %input_path_1%
explorer.exe  %input_path_1%
)
)

set input_path_2=%2
if "%2"=="" (
echo ����Ĳ�����ַ������ ���򿪱���·���ļ���
rem explorer.exe %cur_path%
) else (

set first_two_char=!input_path_2:~0,2!
set rest_path=!input_path_2:~1!
set fixed_first_two_char=!first_two_char!

if "!first_two_char!" == ".\" (
set compare_path=!cur_path:~2!
echo ���·�� %cur_path%!rest_path!
explorer.exe %cur_path%!rest_path!
) else (
echo ����·�� %input_path_2%
explorer.exe  %input_path_2%
)
)


set input_path_3=%3
if "%3"=="" (
echo ����Ĳ�����ַ������ ���򿪱���·���ļ���
rem explorer.exe %cur_path%
) else (

set first_two_char=!input_path_3:~0,2!
set rest_path=!input_path_3:~1!
set fixed_first_two_char=!first_two_char!

if "!first_two_char!" == ".\" (
set compare_path=!cur_path:~2!
echo ���·�� %cur_path%!rest_path!
explorer.exe %cur_path%!rest_path!
) else (
echo ����·�� %input_path_3%
explorer.exe  %input_path_3%
)
)



set input_path_4=%4
if "%4"=="" (
echo ����Ĳ�����ַ������ ���򿪱���·���ļ���
rem explorer.exe %cur_path%
) else (

set first_two_char=!input_path_4:~0,2!
set rest_path=!input_path_4:~1!
set fixed_first_two_char=!first_two_char!

if "!first_two_char!" == ".\" (
set compare_path=!cur_path:~2!
echo ���·�� %cur_path%!rest_path!
explorer.exe %cur_path%!rest_path!
) else (
echo ����·�� %input_path_4%
explorer.exe  %input_path_4%
)
)