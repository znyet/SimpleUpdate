@ECHO OFF

cd /d %~dp0
ECHO ��������֮ǰ���º���ļ���������ڣ�
DEL *.txt /f /s /q
DEL ��װ*ִ��.cmd /f /s /q
ECHO.
ECHO.

ECHO ���ڴӡ�ʾ���ϰ汾����Ŀ¼�������ϰ汾�ĳ��򵽵�ǰĿ¼������ʾ
ECHO.
XCOPY ..\..\..\..\ʾ���ϰ汾����Ŀ¼\* .\ /e /y
