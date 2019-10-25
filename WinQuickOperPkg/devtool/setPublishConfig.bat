@echo off
rem 项目发布的一些配置参数
rem echo "设置aaa的值"
rem set "aaa=111"

set "CATALINA_HOME=D:\otherSoftware\tomcatServer\apache-tomcat-7.0.78"

rem 当前脚本所在路径
set "SCRIPT_DIR=%~dp0"
rem echo 值为%SCRIPT_DIR%
if "%SCRIPT_DIR:~-1%" == "\" set SCRIPT_DIR=%SCRIPT_DIR:~0,-1%
rem echo 值为%SCRIPT_DIR%

rem 需要替换的文件所在的文件夹
set "newFilesLocation=example_file\replaceFiles"

rem 需要替换的文件的名称
set "newFileNames=b1.txt b2.txt"

rem 目标zip文件里需要替换的文件所在的文件夹
set "needReplacedFilesLocation=b"

rem 是否需要生成目标文件zip包（1代表需要；0代表不需要）
set "needGenerateTargetFileDir=0"

rem 生成的目标文件zip包的路径
rem set "targetFileDir=%SCRIPT_DIR%\dist"
set "targetFileDir=%CATALINA_HOME%\webapps"

