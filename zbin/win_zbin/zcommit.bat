@ECHO off
rem  notepad win�Դ��ʼǱ� ���Ϊʱ��UTF-8����ΪANSI ��ʽ�����ɽ����������������
Setlocal enabledelayedexpansion
set hh=%time:~0,2%
if /i %hh% LSS 10 (set hh=0%time:~1,1%)
set CURRENT_DATE_TIME_STAMP=%date:~0,4%��%date:~5,2%��%date:~8,2%��-%hh%ʱ%time:~3,2%��%time:~6,2%��
git add ./
git commit -m %CURRENT_DATE_TIME_STAMP%______Zukgit-���ύ
git push
@pause