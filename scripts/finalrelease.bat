@echo off
:: Rudder CyberPatriot Release Tool
:: put this file in c:\aeacus.
:: Run this as the competition user/administrator.
cd C:\aeacus
title ProvisionTool
echo RUN THIS AS COMPETITION USER AS ADMIN.
echo ProvisionTool - This will release the image for distrib. 
echo DO NOT START THE IMAGE AFTER THIS PROCESS!
if exist scoring.conf (
	echo Scoring file exists- good.
	if exist readme.conf (
		echo readme conf file exists.
	) else (
		echo ReadMe Config file does not exist!
		pause
		goto :eof
	)
)
echo Press the close button to abort, or -
pause
echo Checking the config one last time...
aeacus.exe -v -d check
echo Scroll up and check if the scoring file is valid. If so: 
pause
echo Compiling readme
aeacus.exe -v -d readme
echo\ > TeamID.txt
net user administrator /active:no
rmdir /s /q c:\users\administrator
del scoring.dat
aeacus.exe -v -d encrypt
echo Follow the following prompts that the app gives you.
aeacus.exe -v -y release
echo Checking if we have everything before we shut down and remove files
if exist scoring.dat (
	echo Encrypted scoring file exists- good.
	if exist assets\ReadMe.html (
		echo readme HTML file exists.
	) else (
		echo ReadMe HTML file does not exist!
		if exist readme.conf (
			aeacus -v readme
		) else (
			echo Can't make the readme due to a missing config.
		pause
	)
)
rmdir /s /q misc
del /q *.conf
del /q *.bat
del /q assets\*.html
del /q assets\*.txt
del /q aeacus.exe
start shutdown.exe -s -t 04 -c "ProvisionTool has released this image, now shutting down."
del /q %userprofile%\Desktop\*.bat
goto :eof