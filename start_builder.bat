@echo off
echo StartBuilding...

set builder_starts=TRUE
set modules=./bModules

call %modules%\settings.bat
call %modules%\clean.bat
call %modules%\git.bat
if /I "%git_failed%"=="TRUE" call %modules%\git_failed.bat & goto :end

call %modules%\build.bat
if /I "%msb_failed%"=="TRUE" call %modules%\msb_failed.bat & goto :end

call %modules%\check.bat

:end
call %modules%\email.bat
call %modules%\deltemp.bat

echo Done.

timeout /t 10