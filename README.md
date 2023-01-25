>注意：此文件利用 Markdown 语法写作，如果没有支持的应用程序，可能无法达到最佳效果
# ADBtoolbox
已支持功能

1.[截屏](#截屏)

2.[安装应用](#安装应用)

3.[推送文件](#推送文件)
## 截屏
```
adb shell screencap /sdcard/Download/one.png
adb pull /sdcard/Download/one.png
adb shell rm -f /sdcard/Download/one.png
```
## 安装应用
```
echo off
echo 请先将预安装应用命名为 app.apk ，并放在 apks 文件夹下
PAUSE
cls
adb install -d apks/app.apk
```
##  推送文件 
```
echo off
echo 请先将预推送文件名改为 abc ，并放在 file 文件夹中
pause
adb push file/abc /sdcard/Download/
echo 已推送到/sdcard/Download/文件夹中
pause
```
