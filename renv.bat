@echo off
IF "%~1"=="a" GOTO activate
IF "%~1"=="d" GOTO deactivate
IF "%~1"=="r" (
    GOTO remove
) ELSE ( 
    GOTO fail
)

:activate
echo "Activating environment"
penv\Scripts\activate.bat
exit /B 0

:deactivate
echo "Deactivating enviroment"
deactivate
exit /B 0

:remove
echo "Removing enviornment"
deactivate
rm -rf penv
exit /B 0

:fail
echo "Invalid command"
exit /B 0