@echo off

rem ��¼��ǰλ��
set "CURRENT_DIR=%cd%"

rem ��bat�ļ��ж��庯����������
rem set "LIB_PATH=%JAVA_HOME%\jre\lib\rt.jar %JAVA_HOME%\lib\tools.jar"
set "LIB_PATH=C:\worksoft\Java\jdk1.8.0_161\jre\lib\rt.jar C:\worksoft\Java\jdk1.8.0_161\lib\tools.jar"

rem ��ʱ���·���ı���
set "my_path="

rem ��ȡ�ļ���
setlocal EnableDelayedExpansion
for %%i in (%LIB_PATH%) do (
rem echo "����Ĳ���Ϊ==========%%i"
call:getFileName "%%i"
echo "�ļ���Ϊ��====!my_path!"
)
setlocal DisableDelayedExpansion
echo.

rem ��ȡ�ļ�����·��
setlocal EnableDelayedExpansion
for %%i in (%LIB_PATH%) do (
call:getFileDir "%%i"
echo "�ļ�����·��Ϊ��====!my_path!"
)
setlocal DisableDelayedExpansion

pause>nul&goto:eof

rem �Զ��庯����ͨ��ȫ·������ļ���
:getFileName
rem for %%a in ("%~1") do (echo %%~nxa)
rem for %%a in ("%~1") do (echo %CURRENT_DIR%\%%~nxa)
for %%a in ("%~1") do (
set "my_path=%%~nxa"
)
rem echo "�����ڲ����޸Ľ��Ϊ%my_path%"
goto:eof

rem �Զ��庯����ͨ���ļ���ȫ·����ȡ�ļ������ļ���
rem ���磺����
rem C:\worksoft\Java\jdk1.8.0_161\jre\lib\endorsed\rt_debug.jar
rem �õ��Ľ����C:\worksoft\Java\jdk1.8.0_161\jre\lib\endorsed\
:getFileDir
for %%a in ("%~1") do (
set "my_path=%%~dpa"
)
goto:eof

rem �ο�����
rem �����bat�ű��ж��庯���� https://www.jb51.net/article/53016.htm
rem ��δ��ļ�ȫ·������ȡ�ļ����� https://blog.csdn.net/techfield/article/details/83061295
rem ����ƥ��ģʽ https://www.jb51.net/article/97588.htm
rem forѭ�����޷��ı������ֵ https://zhidao.baidu.com/question/140583844767053805.html
rem https://www.cnblogs.com/mq0036/p/3478108.html