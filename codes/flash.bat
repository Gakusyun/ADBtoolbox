@echo off
:MENU
cls
echo 1.Recovery
echo 2.Boot
echo 3.打开命令行
echo 4.返回主菜单(并重启系统)
echo 5.进入Rec
set choice=
set /p choice=请直接输入对应数字回车：
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto rec
if /i "%choice%"=="2" goto boot
if /i "%choice%"=="3" goto cmda
if /i "%choice%"=="4" goto back
if /i "%choice%"=="5" goto retore
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU 
:rec
echo 请将待刷入文件命名为 rec.img 放入file文件夹中
pause 
fastboot.exe flash recovery rec.img
echo 结束
pause
goto MENU
:boot
echo 请将待刷入文件命名为 boot.img 放入file文件夹中
pause 
fastboot.exe flash boot boot.img
fastboot.exe reboot
echo 结束
pause
goto MENU
:cmda
cls
echo 输入 call b.bat 返回主菜单
cmd /k
:back
fastboot.exe reboot
call b.bat
:retore
fastboot.exe reboot recovery
call b.bat