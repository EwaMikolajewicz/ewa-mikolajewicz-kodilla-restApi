call runcrud.bat
if "%ERRORLEVEL%"=="0" goto open
echo.
echo RUNCRUD has errors - breaking work
goto fail

:open
set browser=firefox.exe
set wait_time=30
start %BROWSER% -new-tab "http://localhost:8080/crud/v1/task/getTasks"
if "%ERRORLEVEL%"=="0" goto end
echo.
echo Error - breaking work
goto stoptomcat

:stoptomcat
call %CATALINA_HOME%\bin\shutdown.bat

:fail
echo.
echo There were errors.

:end
echo.
echo All work is finished.