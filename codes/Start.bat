@ECHO OFF
:MENU
cls
echo 1.��װ���
echo 2.�����ļ�
echo 3.����
echo 4.��ˢר��
echo 5.��������
echo 6.�߼�����
echo 7.��һҳ
set choice=
set /p choice=��ֱ�������Ӧ���ֻس���
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto ins
if /i "%choice%"=="2" goto push
if /i "%choice%"=="3" goto shot
if /i "%choice%"=="4" goto flash
if /i "%choice%"=="5" goto cmda
if /i "%choice%"=="6" goto hiboot
if /i "%choice%"=="7" goto start2
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU
:ins
call installapk.bat
:push
call pushfile.bat
:shot
call Screenshot.bat
:flash
adb.exe reboot fastboot
call flash.bat
:cmda
cls
echo ���� call b.bat �������˵�
cmd /k
:hiboot
call hiboot.bat
:start2
call start2.bat