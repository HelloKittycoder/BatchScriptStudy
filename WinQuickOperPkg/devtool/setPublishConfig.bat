@echo off
rem ��Ŀ������һЩ���ò���
rem echo "����aaa��ֵ"
rem set "aaa=111"

set "CATALINA_HOME=D:\otherSoftware\tomcatServer\apache-tomcat-7.0.78"

rem ��ǰ�ű�����·��
set "SCRIPT_DIR=%~dp0"
rem echo ֵΪ%SCRIPT_DIR%
if "%SCRIPT_DIR:~-1%" == "\" set SCRIPT_DIR=%SCRIPT_DIR:~0,-1%
rem echo ֵΪ%SCRIPT_DIR%

rem ��Ҫ�滻���ļ����ڵ��ļ���
set "newFilesLocation=example_file\replaceFiles"

rem ��Ҫ�滻���ļ�������
set "newFileNames=b1.txt b2.txt"

rem Ŀ��zip�ļ�����Ҫ�滻���ļ����ڵ��ļ���
set "needReplacedFilesLocation=b"

rem �Ƿ���Ҫ����Ŀ���ļ�zip����1������Ҫ��0������Ҫ��
set "needGenerateTargetFileDir=0"

rem ���ɵ�Ŀ���ļ�zip����·��
rem set "targetFileDir=%SCRIPT_DIR%\dist"
set "targetFileDir=%CATALINA_HOME%\webapps"

