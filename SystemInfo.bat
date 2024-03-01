@echo off
echo.
echo Displaying logged in user...
echo.
wmic computerSystem get userName
pause
echo.
echo Displaying startup command list...
echo.
wmic startup get caption, command
pause
echo.
echo Displaying system manufacturer, total physical memory, model, name, and username...
echo.
wmic computersystem get manufacturer, totalphysicalmemory, model, name, username
pause
echo.
echo Displaying CPU information...
echo.
wmic cpu get caption, name, deviceid, numberofcores, maxclockspeed, status
pause
echo.
echo Displaying partition information...
echo.
wmic partition get name,size,type
pause
echo Displaying disk drive information...
wmic diskdrive get Name, Size, Manufacturer, Model, InterfaceType, MediaType, SerialNumber
pause
echo.
echo Displaying BIOS serial number...
echo.
wmic bios get serialnumber
pause
echo.
echo Displaying operating system information...
echo.
wmic os get caption, csdversion, csname, installDate, lastBootUpTime, version
pause
echo.
echo Displaying IPv4 address...
echo.
ipconfig | findstr IPv4
pause
echo.
echo Displaying network adapter configuration...
echo.
wmic nicconfig get caption, ipaddress, macaddress, defaultipgateway
pause
echo.
echo Displaying environment variables...
echo.
wmic environment get description, name, variablevalue
pause
echo.
echo Displaying disk quota information...
echo.
wmic diskquota get diskSpaceLimit, diskSpaceRemaining, status, volumePath, warningLimit
pause
echo.
echo Displaying installed product names and versions...
echo.
wmic product get name,version
pause
echo.
echo Displaying currently running processes...
echo.
wmic process get Caption, Executablepath, ProcessId, CreationDate
pause
echo.
echo Displaying process start times...
echo.
powershell -Command "Get-Process | select name, starttime"
pause
