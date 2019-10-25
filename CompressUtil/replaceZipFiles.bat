@echo off
rem ����˵�����滻zip�ļ����һЩ�ļ���Ŀǰֻ���滻zip����ĳ���ļ�������ļ���
rem �����Ƕ���ļ�������ļ���
rem *************��Ҫ�ֶ����õı�����************
rem newFilesLocation
rem newFileNames
rem needReplacedFilesLocation
rem *****************************************

rem ʹ�÷�������ѹ�����ϵ���bat�ű���
rem Ҫ����Ҫ�滻���ļ��д���ļ�Ŀ¼Ҫ��replaceZipFiles.bat��ͬһ���ļ����£�ԭʼzip��Ŀ¼λ������
rem ������G�����и��ļ�test.zip���ϵ�D:\replaceZipFiles.bat
rem �����԰�example_file�ļ������test.zipֱ���ϵ�replaceZipFiles.bat�ϣ�

rem ===========================��������start===========================
rem ���Զ��庯���õ���ʱ����
set "FUNC_TEMP_VAR="

rem ��ǰ�ű�����·��
set "SCRIPT_DIR=%~dp0"
rem echo ֵΪ%SCRIPT_DIR%
call:removeLastSlash "%SCRIPT_DIR%"
set "SCRIPT_DIR=%FUNC_TEMP_VAR%"
rem echo ֵΪ%SCRIPT_DIR%

rem ��Ҫ�滻���ļ����ڵ��ļ���
set "newFilesLocation=example_file\replaceFiles"

rem ��Ҫ�滻���ļ�������
set "newFileNames=b1.txt b2.txt"

rem Ŀ��zip�ļ�����Ҫ�滻���ļ����ڵ��ļ���
set "needReplacedFilesLocation=b"

rem ԭʼѹ��������Ŀ¼
set "originalFileDir=%~dp1"

rem ԭʼѹ�����ļ���
rem test.zip
set "originalFileAllName=%~nx1%"
rem test
set "originalFileName=%~n1%"

rem ���ɵ�Ŀ���ļ���·��
set "targetFileDir=%SCRIPT_DIR%\dist"
if not exist "%targetFileDir%" mkdir "%targetFileDir%"

rem 7z���7z�������ΪD:\short\batool\7z.cmd����д��
rem set "zipApp=D:\short\batool\7z"��
set "zipApp=7z"
rem ===========================��������end===========================

rem ��ѹ�ļ�����ǰĿ¼�����Ϲ������ļ����ڵ�Ŀ¼��Ҳ����G:\��
call %zipApp% x -y "%originalFileAllName%" -o"%targetFileDir%\%originalFileName%"\

rem �滻�ļ�
call:copyFiles "%newFileNames%" "%SCRIPT_DIR%\%newFilesLocation%" "%targetFileDir%\%originalFileName%\%needReplacedFilesLocation%"

rem ����ѹ����dist�ļ���
echo %originalFileName%
call %zipApp% a "%targetFileDir%\%originalFileAllName%" "%targetFileDir%\%originalFileName%"\
rem ��������ѹ���ļ�
rd /s /q "%targetFileDir%\%originalFileName%"
pause

rem ===========================�Զ��庯��start===========================
rem �Զ��庯�����Ƴ��ַ���ĩβ��б��
:removeLastSlash
set "FUNC_TEMP_VAR=%~1"
rem echo "%FUNC_TEMP_VAR%"
if "%FUNC_TEMP_VAR:~-1%" == "\" set FUNC_TEMP_VAR=%FUNC_TEMP_VAR:~0,-1%
rem echo %FUNC_TEMP_VAR%
goto:eof

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