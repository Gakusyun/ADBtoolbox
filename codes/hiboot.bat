@echo off
:MENU
cls
echo 1.Recovery
echo 2.Fastboot
echo 3.打开命令行
echo 4.返回主菜单
set choice=
set /p choice=请直接输入对应数字回车：
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto rec
if /i "%choice%"=="2" goto fastboot
if /i "%choice%"=="3" goto cmda
if /i "%choice%"=="4" goto back
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU 
:rec
adb.exe reboot recovery
goto back
:fastboot
adb.exe reboot fastboot
call flash.bat
:cmda
cls
echo 输入 call b.bat 返回主菜单
cmd /k
:back
fastboot.exe reboot
call b.bat