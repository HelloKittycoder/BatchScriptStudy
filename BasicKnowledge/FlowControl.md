### ���̿���
һ�� �����ж�if  
1.�ж��ַ����Ƿ�Ϊ��
```batch
@echo off
rem �������
set procName=%1
if "%procName%"=="" (
    echo ��
) else (
    echo %procName%
)
```