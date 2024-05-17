@echo off
:: Configs autologon
:: Must be run as an administrator.
echo Autologon Configurator
set /p alid=Type in the username of the competition user: 
set /p alpw=Type in the password of the competition user (you'll be able to see this, this is normal): 
echo Making the file!

:makefile
:: Makes the file in autologon.reg in the current dir.
echo Windows Registry Editor Version 5.00 > autologon.reg
echo\ >> autologon.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon] >> autologon.reg
echo "AutoAdminLogon"=dword:00000001 >> autologon.reg
echo "DefaultDomainName"="%computername%" >> autologon.reg
echo "DefaultUserName"="%alid%" >> autologon.reg
echo "DefaultPassword"="%alpw%" >> autologon.reg

echo File was made as autologon.reg. We're now going to install the reg file, so follow the dialog Windows will give you.
start autologon.reg
timeout 5
goto :eof
