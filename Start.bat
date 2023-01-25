@ECHO OFF
:MENU
cls
echo 1.安装软件
echo 2.推送文件
echo 3.截屏
echo 4.线刷专区
echo 5.打开命令行
echo 6.高级重启
echo 7.下一页
set choice=
set /p choice=请直接输入对应数字回车：
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto ins
if /i "%choice%"=="2" goto push
if /i "%choice%"=="3" goto shot
if /i "%choice%"=="4" goto flash
if /i "%choice%"=="5" goto cmda
if /i "%choice%"=="6" goto hiboot
if /i "%choice%"=="7" goto start2
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU
:ins
call codes/installapk.bat
:push
call codes/pushfile.bat
:shot
call codes/Screenshot.bat
:flash
cd codes
adb.exe reboot fastboot
call flash.bat
:cmda
cd codes
cls
echo 输入 call b.bat 返回主菜单
cmd /k
:hiboot
call codes/hiboot.bat
:start2
call codes/start2.bat