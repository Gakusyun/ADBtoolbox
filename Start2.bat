@ECHO OFF
:MENU
cls
echo 1.
echo 2.
echo 3.
echo 4.
echo 5.
echo 6.
echo 7.上一页
set choice=
set /p choice=请直接输入对应数字回车：
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto non
if /i "%choice%"=="2" goto non
if /i "%choice%"=="3" goto non
if /i "%choice%"=="4" goto non
if /i "%choice%"=="5" goto non
if /i "%choice%"=="6" goto non
if /i "%choice%"=="7" goto start
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU
:non
goto MENU
:start
call Start.bat