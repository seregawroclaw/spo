@echo off
Set /P blabla=Would you like to format local disk C: (yes/no)
echo Your answer was: %blabla%
Set /P ans=Are you sure you would like to format local disk C: (yes/no)
if %ans%==yes (echo Disk C: successfully formatted) Else (echo Operation cancelled)
pause
