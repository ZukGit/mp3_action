@echo off
:: �ر��������
if "%1"=="" (
    echo No file specified.
    pause
    exit /b
)
 
:: ��ȡ���ݵ��ļ�·��
set "filePath=%1"
:: ��ȡ�ļ���������·����
set "fileName=%~nx1"
:: ��ȡ�ļ���Ŀ¼·��
set "fileDir=%~dp1"
 
:: �����Ҫ��ӵ�ע������Ϣ
echo Adding fileName[%fileName%]  param1:[%%1] fileDir[%fileDir%] file information to the registry: filePath[%filePath%]


del zcmd_admin_I9.bat
echo @ECHO off >> zcmd_admin_I9.bat  
echo setlocal enabledelayedexpansion  >> zcmd_admin_I9.bat  
rem set local_str=^%1 mshta vbscript^:CreateObject^(^"Shell^.Application^"^)^.ShellExecute^(^"cmd^.exe^",^"/c ^%^~s0 ::^",^"^",^"runas^",1^)^(window^.close^)^&^&exit
echo ^%%^1 mshta vbscript^:CreateObject^(^"Shell^.Application^"^)^.ShellExecute^(^"cmd^.exe^",^"/c %%^~s0 ::^",^"^",^"runas^",1^)^(window^.close^)^&^&exit  >> zcmd_admin_I9.bat 
echo REG ADD "HKCR\*\shell\%fileName%" /ve /d "%fileName%" /f >> zcmd_admin_I9.bat  
echo REG ADD "HKCR\*\shell\%fileName%" /v "icon" /t REG_SZ /d  "%filePath%" /f >> zcmd_admin_I9.bat  
echo REG ADD "HKCR\*\shell\%fileName%\command" /ve /d  "\"%filePath%\" \"^%%^%%^1\"" /f >> zcmd_admin_I9.bat  
start zcmd_admin_I9.bat  

:: ����ļ�·����ע���
echo ____Command1_____: REG ADD "HKCR\*\shell\%fileName%" /ve /d "%fileName%" /f
rem REG ADD "HKCR\*\shell\%fileName%" /ve /d "%fileName%" /f

echo ____Command2_____: REG ADD "HKCR\*\shell\%fileName%" /v "icon" /t REG_SZ /d  "%filePath%" /f
rem REG ADD "HKCR\*\shell\%fileName%" /v "icon" /t REG_SZ /d  "%filePath%" /f

echo ____Command3_____: REG ADD "HKCR\*\shell\%fileName%\command" /ve /d  "\"%filePath%\" \"^%%^%%^1\"" /f
rem REG ADD "HKCR\*\shell\%fileName%\command" /ve /d  "\"%filePath%\" \"%%1\"" /f

echo File information added successfully
:: �����ʾ��Ϣ����֪�û��ļ���Ϣ�ѳɹ���ӵ�ע���
delete zcmd_admin_I9.bat 
exit