@ECHO off
Setlocal ENABLEDELAYEDEXPANSION
set cur_path=%cd%
set input_path=%1
set perl_concat_path=%userprofile%\Desktop\zbin\win_zbin\log_concat.pl
echo �ѵ�ǰ main.log ���ļ��е� reportLocation Location λ����Ϣת��Ϊ �ȸ��ͼ��ʶ��� klm�ļ� !
			
echo ���ļ�����ִ��   ## *����Ŀ��Location��Log�ļ�
echo  cur_path=%cur_path% 
echo  perl %perl_concat_path% %1                     
perl %perl_concat_path%  %1 
