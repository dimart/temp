@echo off

if "%builder_starts%"=="" goto :EOF

echo MSBuild failed..............................FAIL

if exist %email_attach% echo ,>%email_attach% 
echo %msb_log%>%email_attach%

set email_subject=%msb_fail_result%