if "%builder_starts%"=="" goto :EOF

echo Deleting old solution folder...

if not "%repo_name%"=="" if exist %repo_name% rmdir /q /s %repo_name%