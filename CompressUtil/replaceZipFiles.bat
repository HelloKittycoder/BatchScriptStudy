@echo off
rem 功能说明：替换zip文件里的一些文件（目前只能替换zip包里某个文件夹里的文件，
rem 不能是多个文件夹里的文件）
rem *************需要手动设置的变量名************
rem newFilesLocation
rem newFileNames
rem needReplacedFilesLocation
rem *****************************************

rem 使用方法：将压缩包拖到该bat脚本上
rem 要求：需要替换的文件夹存放文件目录要和replaceZipFiles.bat在同一个文件夹下，原始zip包目录位置随意
rem 举例：G盘下有个文件test.zip，拖到D:\replaceZipFiles.bat
rem （可以把example_file文件夹里的test.zip直接拖到replaceZipFiles.bat上）

rem ===========================变量设置start===========================
rem 给自定义函数用的临时变量
set "FUNC_TEMP_VAR="

rem 当前脚本所在路径
set "SCRIPT_DIR=%~dp0"
rem echo 值为%SCRIPT_DIR%
call:removeLastSlash "%SCRIPT_DIR%"
set "SCRIPT_DIR=%FUNC_TEMP_VAR%"
rem echo 值为%SCRIPT_DIR%

rem 需要替换的文件所在的文件夹
set "newFilesLocation=example_file\replaceFiles"

rem 需要替换的文件的名称
set "newFileNames=b1.txt b2.txt"

rem 目标zip文件里需要替换的文件所在的文件夹
set "needReplacedFilesLocation=b"

rem 原始压缩包所在目录
set "originalFileDir=%~dp1"

rem 原始压缩包文件名
rem test.zip
set "originalFileAllName=%~nx1%"
rem test
set "originalFileName=%~n1%"

rem 生成的目标文件包路径
set "targetFileDir=%SCRIPT_DIR%\dist"
if not exist "%targetFileDir%" mkdir "%targetFileDir%"

rem 7z命令（7z命令如果为D:\short\batool\7z.cmd，就写成
rem set "zipApp=D:\short\batool\7z"）
set "zipApp=7z"
rem ===========================变量设置end===========================

rem 解压文件（当前目录是在拖过来的文件所在的目录，也就是G:\）
call %zipApp% x -y "%originalFileAllName%" -o"%targetFileDir%\%originalFileName%"\

rem 替换文件
call:copyFiles "%newFileNames%" "%SCRIPT_DIR%\%newFilesLocation%" "%targetFileDir%\%originalFileName%\%needReplacedFilesLocation%"

rem 重新压缩到dist文件夹
echo %originalFileName%
call %zipApp% a "%targetFileDir%\%originalFileAllName%" "%targetFileDir%\%originalFileName%"\
rem 不保留解压的文件
rd /s /q "%targetFileDir%\%originalFileName%"
pause

rem ===========================自定义函数start===========================
rem 自定义函数：移除字符串末尾的斜杠
:removeLastSlash
set "FUNC_TEMP_VAR=%~1"
rem echo "%FUNC_TEMP_VAR%"
if "%FUNC_TEMP_VAR:~-1%" == "\" set FUNC_TEMP_VAR=%FUNC_TEMP_VAR:~0,-1%
rem echo %FUNC_TEMP_VAR%
goto:eof

rem 自定义函数：复制要替换的文件
rem 参数1：需要复制的文件
rem 参数2：复制的源目录
rem 参数3：复制的目标目录
:copyFiles
for %%i in (%~1) do (
rem echo copy /y "%~2\%%i" "%~3"
copy /y "%~2\%%i" "%~3"
)
goto:eof
rem ===========================自定义函数end===========================