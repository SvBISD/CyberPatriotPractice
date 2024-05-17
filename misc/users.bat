@echo off
title RudCyberPatriot Users

pause

:: main admin
net user twilightsparkle Sp3lls0fMag1c! /add
echo Twilight created

:: other users
echo creating other users...

net user fluttershy B!rdi3$! /add

net user rarity /add

net user dash flying /add

net user pinkie P4rt135! /add

net user celestia sunprincess /add

net user luna Pr1c3ss0fM00n /add

net user nmoon D@rkestM00ns /add

net user sglimmer 3qu4l1ty /add

net user cadance L0v3Pr1c3ss /add

net user colgate T00thbru5h /add

echo Other users created.

:: groups and assignment

net localgroup administrators twilightsparkle celestia luna nmoon /add
echo Admins were assigned.

net localgroup princesses /add
net localgroup princesses twilightsparkle celestia luna nmoon cadance /add

net localgroup mane6 /add
net localgroup mane6 twilightsparkle rarity dash fluttershy pinkie /add

net localgroup canterlot /add
net localgroup canterlot twilightsparkle colgate sglimmer /add

goto :eof