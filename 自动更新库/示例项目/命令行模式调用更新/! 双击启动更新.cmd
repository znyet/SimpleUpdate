@ECHO OFF

cd /d %~dp0
cd ..
ECHO ��ǰĿ¼��%CD%
ECHO.
ECHO ��������֮ǰ���º���ļ���������ڣ�
CD ������ģʽ���ø���
DEL *.txt /f /s /q
DEL ��װ*ִ��.cmd /f /s /q
ECHO.
ECHO.
CD ..

ECHO ���ڴӡ�ʾ���ϰ汾����Ŀ¼�������ϰ汾�ĳ��򵽵�ǰĿ¼��������ģʽ���ø��¡�������ʾ
ECHO.
XCOPY ʾ���ϰ汾����Ŀ¼\* ������ģʽ���ø���\ /e /y
ECHO.
ECHO.
ECHO ��ǰ�������ã�
ECHO.
ECHO ���µ�ַ��	%CD%\ʾ��������\{0}
ECHO ��Ϣ�ļ���	update_c.xml
ECHO ��ǰ�汾��	1.0.0.0
ECHO ��ǰӦ�ó���Ŀ¼����ԣ���	(��)
ECHO ��־�ļ���	testapp.log
ECHO ���ؼ����½��棺	(��)
ECHO �����У�	/startupdate /cv "1.0.0.0" /url "%CD%\ʾ��������\{0}" /infofile "update_c.xml" /log "testapp.log" 
ECHO.

ECHO ������������
������ģʽ���ø���\SimpleUpdater.exe /startupdate /cv "1.0.0.0" /url "%CD%\ʾ��������\{0}" /infofile "update_c.xml" /log "testapp.log" /hideCheckUI

PAUSE

