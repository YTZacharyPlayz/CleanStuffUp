title CleanStuffUp Unstable 0.1b
cls
@echo off
echo Welcome to use CleanStuffUp Unstable 0.1b
goto :menu

:menu
set /P c=Choose task. [C]leanup [A]dvenced Cleanup [G]oogle Chrome Cleanup [E]xit
if /I "%c%" EQU "C" goto :cleanup
if /I "%c%" EQU "E" goto :quit
if /I "%c%" EQU "A" goto :advenced
goto :menu

:cleanup

echo I am here because you want to cleanup your PC
cd %temp%
del /f/q/s *.* >NUL
goto :menu

:quit

exit

:advenced

cd %temp%
echo Please type Y in the next prompt
del *.*
cd C:\Windows\Temp
echo Please type Y in the next prompt
del *.*
:menu

:gbcleanup

cd %appdata%
cd ..
cd Local\Google\Chrome\User Data\Default\Cache\Cache_Data
dir
del /f/q/s *.* >NUL
goto :menu