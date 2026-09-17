REM 1 - git branch to setup
REM Sequence of these git commands is mandatory to cover various states of git repos.
REM If CI/CD build is broken, check this script is not in subject of change.

if "%1"=="" exit /b 1
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%

git fetch origin %1
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%

git clean -dfx
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%

git reset --hard origin/%1
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%

git checkout %1
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%

git pull origin %1
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%
