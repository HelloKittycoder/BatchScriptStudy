@echo off
rem ��ӡָ����һЩ����
echo "=========��ӡtest1.txt text2.txt========="
for %%i in (test1.txt test2.txt) do echo %%i
rem ���ֻ�Ǽ򵥵���cmd���ڲ�������forѭ�����룬��Ҫд��
rem for %i in (test1.txt test2.txt) do @echo %i

rem ��ӡC�̸�Ŀ¼�µ�����Ŀ¼����
rem /d ����ֻ����ʾ��ǰĿ¼�µ�Ŀ¼���֣�������������һ����Ŀ¼
echo "=========��ʾC�̸�Ŀ¼�µ�����Ŀ¼========="
for /d %%i in (c:\*) do echo %%i
C:
echo "=========��ʾ��ǰĿ¼������ֻ��1-4����ĸ��Ŀ¼========="
for /d %%i in (????) do echo %%i
pause