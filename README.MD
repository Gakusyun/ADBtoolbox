>注意：此文件利用 Markdown 语法写作，如果没有支持的应用程序，可能无法达到最佳效果

>使用此应用需要先下载Android SDK Platform-Tools，可以点击[此处](https://developer.android.google.cn/studio/releases/platform-tools?hl=zh-cn)进行下载；下载完成后，需要将adb.exe所在文件夹内所有文件解压到codes文件夹下

>Attention: bat不支持utf-8，余下代码将会使用c语言完成
# ADBtoolbox
1.[开始](#开始)

2.[安装应用](#安装应用)

3.[推送文件](#推送文件)

4.[截屏](#截屏)

5.[线刷专区](#线刷专区)

6.[高级重启](#高级重启)



## 开始
```
@ECHO OFF
:MENU
cls
echo 1.安装软件
echo 2.推送文件
echo 3.截屏
echo 4.线刷专区
echo 5.打开命令行
echo 6.高级重启
set choice=
set /p choice=请直接输入对应数字回车：
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto ins
if /i "%choice%"=="2" goto push
if /i "%choice%"=="3" goto shot
if /i "%choice%"=="4" goto flash
if /i "%choice%"=="5" goto cmda
if /i "%choice%"=="6" goto hiboot
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
```
## 安装应用
```
@echo off
echo 请先将预安装应用命名为 app.apk ，并放在 apks 文件夹下
PAUSE
cls
adb.exe install -d ./apks/app.apk
pause
echo 显示 Success 则成功
call b.bat
```
##  推送文件 
```
@ECHO OFF
echo 请先将预推送文件名改为 abc ，并放在 file 文件夹中
pause
adb.exe push ./file/abc /sdcard/Download/
echo 已推送到/sdcard/Download/文件夹中
pause
call b.bat
```
## 截屏
```
@ECHO OFF
adb.exe shell screencap /sdcard/Download/one.png
adb.exe pull /sdcard/Download/one.png
adb.exe shell rm -f /sdcard/Download/one.png 
move one.png ./ScreenShot/
pause
call b.bat
```
## 线刷专区
```
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
```
## 高级重启
```
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
```
## b.bat
```
cd ..
call Start.bat
```
