@echo off
:: Rudder CyberPatriot Clear Aeacus
:: Run this as the competition user as an administrator.
echo Press any key to kill the Aeacus processes and clear it out of the system...
pause > nul
taskkill /f /im phocus.exe
rmdir /s /q c:\aeacus
sc stop cssclient
sc delete cssclient
schtasks /delete /tn "CSSClient" /f
schtasks /delete /tn "TeamID" /f
del /q %userprofile%\Desktop\*.lnk
net user administrator /active:yes
echo Finished!
timeout 5
goto :eof