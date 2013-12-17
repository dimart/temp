@echo off

if "%builder_starts%"=="" goto :EOF

echo Cloning repository...

git clone --branch master %git_url%>nul 2>%git_errors%

if errorlevel 1 goto :fail

goto :EOF

:fail

set git_failed=TRUE