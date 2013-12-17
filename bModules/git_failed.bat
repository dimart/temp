@echo off

if "%builder_starts%"=="" goto :EOF

echo Git clone failed...............................FAIL

if exist %email_attach% echo ,>%email_attach% 
echo %git_errors%>>%email_attach%

set email_subject=GIT CLONE FAILED