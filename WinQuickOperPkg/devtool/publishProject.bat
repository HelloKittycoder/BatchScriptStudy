@echo off

rem echo %1
rem tomcat������Ŀ����web��Ŀ���ϵ���bat�ļ��ϼ���

rem web��Ŀ�� �磺projectMgmt.zip������ֱ�Ӿ�����Ŀ���������ˣ�������projectMgmt�ļ��У�
rem ʹ��˵����������example_file����ļ������ԣ�replaceFiles�����滻�ɵ��ļ���test.zip����web��

rem ���ò���
call %~dp0setPublishConfig.bat

rem �ر�tomcat
call %CATALINA_HOME%\bin\shutdown.bat

rem �滻�ļ�
call %~dp0replaceZipFiles_func.bat "%1"

rem ����tomcat
call %CATALINA_HOME%\bin\startup.bat
pause