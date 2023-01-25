@ECHO OFF
adb.exe shell screencap /sdcard/Download/one.png
adb.exe pull /sdcard/Download/one.png
adb.exe shell rm -f /sdcard/Download/one.png 
move one.png ./ScreenShot/
pause
call b.bat