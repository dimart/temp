@echo off

if "%builder_starts%"=="" goto :EOF

if exist %git_errors% del %git_errors%
if exist %msb_log% del %msb_log%
if exist %my_log% del %my_log%
if exist %email_log% del %email_log%
if exist %email_attach% del %email_attach%