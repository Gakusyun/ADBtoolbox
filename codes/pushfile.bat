@ECHO OFF
echo 请先将预推送文件名改为 abc ，并放在 file 文件夹中
pause
adb.exe push ./file/abc /sdcard/Download/
echo 已推送到/sdcard/Download/文件夹中
pause
call b.bat