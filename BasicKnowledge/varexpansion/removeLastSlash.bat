@echo off

rem 说明：移除字符串末尾的斜杠
rem 比如：SCRIPT_DIR为 D:\test\aa\，
rem 移除末尾斜杠后，变成 D:\test\aa

rem 当前脚本所在路径
set "SCRIPT_DIR=%~dp0"
echo %SCRIPT_DIR%
if "%SCRIPT_DIR:~-1%" == "\" set SCRIPT_DIR=%SCRIPT_DIR:~0,-1%
echo %SCRIPT_DIR%
pause

rem 参考链接：https://zhidao.baidu.com/question/2118306815476809987.html