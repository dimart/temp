@echo off

if "%builder_starts%"=="" goto :EOF

echo Building solution...

%msb%\MSBuild.exe %sln_file%>%msb_log%

if errorlevel 1 goto :fail

echo Solution has been built!
goto :EOF

:fail

set msb_failed=TRUE
