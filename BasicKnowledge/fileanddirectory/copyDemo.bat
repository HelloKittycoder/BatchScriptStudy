@echo off
rem copy����ʹ��demo
rem ���ò���˵����
rem /y Ŀ���ļ�������ͬ���ļ�ʱֱ�Ӹ��ǣ�����ʾ

rem ʹ��˵����
rem �ȱ�֤E��Ŀ¼�ṹ���£�
rem |��a
rem |      test1.txt
rem |      test2.txt
rem |
rem |��b

rem ��ν�һ��Ŀ¼�µĲ����ļ����Ƶ���һ��Ŀ¼��
rem ԭʼĿ¼E:\a�����������ļ�test1.txt��test2.txt
rem ������Ҫ���������ļ����Ƶ�E:\bĿ¼��
for %%i in (test1.txt test2.txt) do copy /y "E:\a\%%i" "E:\b"
rem ���ֻ�Ǽ򵥵���cmd���ڼ򵥵Ĳ����������д��룬��Ҫд��
rem for %i in (test1.txt test2.txt) do @copy /y "E:\a\%i" "E:\b"
rem ������ȿ��»�ִ��ʲô�������д��
rem for %i in (test1.txt test2.txt) do @echo copy /y "E:\a\%i" "E:\b"