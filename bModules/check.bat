@echo off

if "%builder_starts%"=="" goto :EOF

echo Checking.....

for /F "tokens=*" %%f in (%binaries%) do (
        if not exist "%build_folder%\%%f" (
                set file_missed="%%f"
                goto :fail
        )
)

echo Success build!
set email_subject=Build Success
goto :EOF

:fail
 
set email_subject=Build Failed
echo File %file_missed% is missed after building.>%my_log%
if exist %email_attach% echo ,>%email_attach% 
echo %my_log%>>%email_attach%