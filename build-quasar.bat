@echo off
REM Deploy project to Firebase using local Node.js and Firebase CLI
pushd %~dp0

REM Prepend local nodejs to PATH
set PATH=%~dp0nodejs;%PATH%

echo Building project with Quasar...
nodejs\pnpm.cmd run build -m spa

if errorlevel 1 (
    echo Quasar build failed. Aborting deployment.
    popd
    pause
    exit /b 1
)

popd
pause
