@ECHO OFF
echo ���Ƚ�Ԥ�����ļ�����Ϊ abc �������� file �ļ�����
pause
adb.exe push ./file/abc /sdcard/Download/
echo �����͵�/sdcard/Download/�ļ�����
pause
call b.bat