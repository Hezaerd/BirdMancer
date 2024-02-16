@echo off

echo "Cleaning up old DLLs (and PDBs)..."

@rem Check if unreal engine is open
tasklist /FI "IMAGENAME eq UE4Editor.exe" 2>NUL | find /I /N "UE4Editor.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo "Unreal Engine is open. Please close it before running this script."
    pause
    exit
)

pushd "%~dp0"

set BinariesPath=%~dp0..\Binaries\Win64

@rem define latest as the first dll in the list
for /f "delims=" %%i in ('dir /b /o-d "%BinariesPath%\*.dll"') do (
    set "latest=%%i"
    goto :break
)

:break
for /f "delims=" %%i in ('dir /b /o-d "%BinariesPath%\*.dll"') do (
    if not "%%i"=="%latest%" (
        del "%BinariesPath%\%%i"
    )
)

for /f "delims=" %%i in ('dir /b /o-d "%BinariesPath%\*.pdb"') do (
    if not "%%i"=="%latest:~0,-3%pdb" (
        del "%BinariesPath%\%%i"
    )
)

popd

echo "Done."
pause