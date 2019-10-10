@echo off

rem 记录当前位置
set "CURRENT_DIR=%cd%"

rem 在bat文件中定义函数，并调用
rem set "LIB_PATH=%JAVA_HOME%\jre\lib\rt.jar %JAVA_HOME%\lib\tools.jar"
set "LIB_PATH=C:\worksoft\Java\jdk1.8.0_161\jre\lib\rt.jar C:\worksoft\Java\jdk1.8.0_161\lib\tools.jar"

rem 临时存放路径的变量
set "my_path="

rem 获取文件名
setlocal EnableDelayedExpansion
for %%i in (%LIB_PATH%) do (
rem echo "传入的参数为==========%%i"
call:getFileName "%%i"
echo "文件名为：====!my_path!"
)
setlocal DisableDelayedExpansion
echo.

rem 获取文件所在路径
setlocal EnableDelayedExpansion
for %%i in (%LIB_PATH%) do (
call:getFileDir "%%i"
echo "文件所在路径为：====!my_path!"
)
setlocal DisableDelayedExpansion

pause>nul&goto:eof

rem 自定义函数：通过全路径获得文件名
:getFileName
rem for %%a in ("%~1") do (echo %%~nxa)
rem for %%a in ("%~1") do (echo %CURRENT_DIR%\%%~nxa)
for %%a in ("%~1") do (
set "my_path=%%~nxa"
)
rem echo "函数内部的修改结果为%my_path%"
goto:eof

rem 自定义函数：通过文件的全路径获取文件所在文件夹
rem 比如：输入
rem C:\worksoft\Java\jdk1.8.0_161\jre\lib\endorsed\rt_debug.jar
rem 得到的结果是C:\worksoft\Java\jdk1.8.0_161\jre\lib\endorsed\
:getFileDir
for %%a in ("%~1") do (
set "my_path=%%~dpa"
)
goto:eof

rem 参考链接
rem 如何在bat脚本中定义函数？ https://www.jb51.net/article/53016.htm
rem 如何从文件全路径中提取文件名？ https://blog.csdn.net/techfield/article/details/83061295
rem 常用匹配模式 https://www.jb51.net/article/97588.htm
rem for循环中无法改变变量的值 https://zhidao.baidu.com/question/140583844767053805.html
rem https://www.cnblogs.com/mq0036/p/3478108.html