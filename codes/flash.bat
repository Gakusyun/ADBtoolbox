@echo off
:MENU
cls
echo 1.Recovery
echo 2.Boot
echo 3.��������
echo 4.�������˵�(������ϵͳ)
echo 5.����Rec
set choice=
set /p choice=��ֱ�������Ӧ���ֻس���
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto rec
if /i "%choice%"=="2" goto boot
if /i "%choice%"=="3" goto cmda
if /i "%choice%"=="4" goto back
if /i "%choice%"=="5" goto retore
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU 
:rec
echo �뽫��ˢ���ļ�����Ϊ rec.img ����file�ļ�����
pause 
fastboot.exe flash recovery rec.img
echo ����
pause
goto MENU
:boot
echo �뽫��ˢ���ļ�����Ϊ boot.img ����file�ļ�����
pause 
fastboot.exe flash boot boot.img
fastboot.exe reboot
echo ����
pause
goto MENU
:cmda
cls
echo ���� call b.bat �������˵�
cmd /k
:back
fastboot.exe reboot
call b.bat
:retore
fastboot.exe reboot recovery
call b.bat