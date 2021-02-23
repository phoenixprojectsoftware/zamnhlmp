@echo off
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------    
cd maps
color 0e
echo WARNING: THIS ACTION IS IRREVERIBLE. TO GET THE MAPS BACK YOU WILL
echo HAVE TO DOWNLOAD AN OLDER VERSION OF SHOOTER TOURNEYS. CLOSE
echo THIS WINDOW TO CANCEL, OR PRESS ANY KEY TO PERFORM THE DELETION.
pause
echo Removing KitKat Klub
ping localhost -n 5 >nul
del /f kitkat_klub.bsp
del /f kitkat_klub.txt
echo KitKat Klub removed.
echo Removing KitKat Space
ping localhost -n 5 >nul
del /f kitkat_space.bsp
del /f kitkat_space.txt
echo KitKat Space removed.
echo Removing KitKat Urban
ping localhost -n 5 >nul
del /f kitkat_urban.bsp
del /f kitkat_urban.txt
echo KitKat Urban removed.
echo All maps containing indecent images have been removed.
pause