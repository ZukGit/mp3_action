@ECHO off
Setlocal ENABLEDELAYEDEXPANSION
set cur_path=%cd%
set input_path=%1
set perl_kml_path=%userprofile%\Desktop\zbin\win_zbin\zzmap_gpsLocation_parser_new_7.pl
echo �ѵ�ǰ main.log ���ļ��е� reportLocation Location λ����Ϣת��Ϊ �ȸ��ͼ��ʶ��� klm�ļ� !
echo �T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T			
echo ����һ�������ļ���ִ��   ## ����Ŀ��Location��Log�ļ�
echo zzmap_7.bat  aplogcat-main.txt                       
echo �T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T				
echo ���ļ�����ִ��   ## *����Ŀ��Location��Log�ļ�
echo  perl %perl_kml_path% *.txt                           
perl %userprofile%\Desktop\zbin\win_zbin\zzmap_gpsLocation_parser_new_7.pl  %1
