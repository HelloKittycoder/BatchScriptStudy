@echo off
rem ����˵�����滻zip�ļ����һЩ�ļ���Ŀǰֻ���滻zip����ĳ���ļ�������ļ���
rem �����Ƕ���ļ�������ļ���
rem ����ǹ������ű������õ�һ���汾
rem *************��Ҫ�ֶ����õı�����************
rem newFilesLocation ��Ҫ�滻���ļ����ڵ��ļ���
rem newFileNames ��Ҫ�滻���ļ�������
rem needReplacedFilesLocation Ŀ��zip�ļ�����Ҫ�滻���ļ����ڵ��ļ���
rem targetFileDir ���ɵ�Ŀ���ļ�zip����·��
rem *****************************************

rem ʹ�÷�������ѹ�����ϵ���bat�ű���
rem Ҫ����Ҫ�滻���ļ��д���ļ�Ŀ¼Ҫ��replaceZipFiles.bat��ͬһ���ļ����£�ԭʼzip��Ŀ¼λ������
rem ������G�����и��ļ�test.zip���ϵ�D:\replaceZipFiles.bat
rem �����԰�example_file�ļ������test.zipֱ���ϵ�replaceZipFiles.bat�ϣ�

rem ===========================��������start===========================
rem echo "aaa��ֵΪ%aaa%"
rem pause
rem ԭʼѹ��������Ŀ¼
set "originalFileDir=%~dp1"

rem ԭʼѹ�����ļ���
rem test.zip
set "originalFileAllName=%~nx1%"
rem test
set "originalFileName=%~n1%"

rem if not exist "%targetFileDir%" if "%needGenerateTargetFileDir%"=="1" mkdir "%targetFileDir%"

rem 7z���7z�������ΪD:\short\batool\7z.cmd����д��
rem set "zipApp=D:\short\batool\7z"��
set "zipApp=7z"
rem ===========================��������end===========================

rem ===========================���Ĵ����߼�start===========================
rem ��ѹ�ļ�����ǰĿ¼�����Ϲ������ļ����ڵ�Ŀ¼��Ҳ����G:\��
call %zipApp% x -y "%originalFileAllName%" -o"%targetFileDir%\%originalFileName%"\

rem @echo on
rem �滻�ļ�
call:copyFiles "%newFileNames%" "%SCRIPT_DIR%\%newFilesLocation%" "%targetFileDir%\%originalFileName%\%needReplacedFilesLocation%"
rem ����������ʵ�൱��ִ����
rem for %%i in (%newFileNames%) do copy /y "%SCRIPT_DIR%\%newFilesLocation%\%%i" "%targetFileDir%\%originalFileName%\%needReplacedFilesLocation%"

rem ����ѹ����dist�ļ���
rem echo %originalFileName%
if "%needGenerateTargetFileDir%"=="1" call %zipApp% a "%targetFileDir%\%originalFileAllName%" "%targetFileDir%\%originalFileName%"\
rem ��������ѹ���ļ�
rem rd /s /q "%targetFileDir%\%originalFileName%"
goto:eof
rem ===========================���Ĵ����߼�end===========================

rem ===========================�Զ��庯��start===========================
rem �Զ��庯��������Ҫ�滻���ļ�
rem ����1����Ҫ���Ƶ��ļ�
rem ����2�����Ƶ�ԴĿ¼
rem ����3�����Ƶ�Ŀ��Ŀ¼
:copyFiles
for %%i in (%~1) do (
rem echo copy /y "%~2\%%i" "%~3"
copy /y "%~2\%%i" "%~3"
)
goto:eof
rem ===========================�Զ��庯��end===========================