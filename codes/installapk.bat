@echo off
echo ���Ƚ�Ԥ��װӦ������Ϊ app.apk �������� apks �ļ�����
PAUSE
cls
adb.exe install -d ./apks/app.apk
pause
echo ��ʾ Success ��ɹ�
call b.bat