@echo off

if "%builder_starts%"=="" goto :EOF

echo Sending email with building result...

if not exist %email_attach% echo. >%email_attach%
blat -body " " -to %email_to% -server %email_server% -f %email_from% -subject "Builder status:[%email_subject%]" -atf %email_attach%>%email_log%

echo Email has been sent