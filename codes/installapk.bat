@echo off
echo 请先将预安装应用命名为 app.apk ，并放在 apks 文件夹下
PAUSE
cls
adb.exe install -d ./apks/app.apk
pause
echo 显示 Success 则成功
call b.bat