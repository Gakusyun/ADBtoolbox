@echo off
:MENU
cls
echo 1.Recovery
echo 2.Fastboot
echo 3.��������
echo 4.�������˵�
set choice=
set /p choice=��ֱ�������Ӧ���ֻس���
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto rec
if /i "%choice%"=="2" goto fastboot
if /i "%choice%"=="3" goto cmda
if /i "%choice%"=="4" goto back
ECHO.������Ч������������...
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
echo ���� call b.bat �������˵�
cmd /k
:back
fastboot.exe reboot
call b.bat