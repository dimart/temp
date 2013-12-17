@echo off

if "%builder_starts%"=="" goto :EOF

::GIT 
set repo_name=Geometry
set git_url=https://github.com/dimart/%repo_name%.git
set git_errors=git_errors.log
set git_failed=false

::MSBUILD 
set msb=%WINDIR%\Microsoft.NET\Framework\v4.0.30319
set msb_log=msbuild.log
set msb_failed=false

::SOLUTION
set sln_name=GeometrySolver
set sln_file=%repo_name%\%sln_name%.sln
set build_folder=%repo_name%\GeometryForm\bin\Debug
set binaries=%modules%\binaries.txt
set my_log=my_log.log
set check_failed=false

::EMAIL
set email_to=dimart.sp@gmail.com
set email_from=builder@mail.ru
set email_server=smtp.mail.ru
set email_attach=attach.txt
set email_log=email.log