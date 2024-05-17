@echo off
:: Rudder CyberPatriot Release Tool First Prepare
:: Run this as Administrator.
echo\ > c:\aeacus\TeamID.txt
rmdir /s /q %userprofile%\Desktop\install
rmdir /s /q %userprofile%\Desktop\aeacus-win32
del /q %userprofile%\Desktop\aeacus-win32.zip
del /q %userprofile%\Desktop\*.reg
del /q %userprofile%\Desktop\*.bat
net user administrator /active:no && shutdown -r -t 0
