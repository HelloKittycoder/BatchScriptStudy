@echo off

rem ˵�����Ƴ��ַ���ĩβ��б��
rem ���磺SCRIPT_DIRΪ D:\test\aa\��
rem �Ƴ�ĩβб�ܺ󣬱�� D:\test\aa

rem ��ǰ�ű�����·��
set "SCRIPT_DIR=%~dp0"
echo %SCRIPT_DIR%
if "%SCRIPT_DIR:~-1%" == "\" set SCRIPT_DIR=%SCRIPT_DIR:~0,-1%
echo %SCRIPT_DIR%
pause

rem �ο����ӣ�https://zhidao.baidu.com/question/2118306815476809987.html