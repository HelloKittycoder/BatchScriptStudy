@echo off

rem echo %1
rem tomcat部署项目，将web项目包拖到该bat文件上即可

rem web项目包 如：projectMgmt.zip（里面直接就是项目包的内容了，而不是projectMgmt文件夹）
rem 使用说明：可以用example_file里的文件来测试，replaceFiles就是替换成的文件，test.zip就是web包

rem 设置参数
call %~dp0setPublishConfig.bat

rem 关闭tomcat
call %CATALINA_HOME%\bin\shutdown.bat

rem 替换文件
call %~dp0replaceZipFiles_func.bat "%1"

rem 启动tomcat
call %CATALINA_HOME%\bin\startup.bat
pause