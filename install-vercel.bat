@echo off
REM Install Vercel CLI locally using local Node.js
pushd %~dp0

REM Prepend local nodejs to PATH
set PATH=%~dp0nodejs;%PATH%

echo Installing Vercel CLI globally using local Node.js...
nodejs\npm.cmd install -g vercel

if errorlevel 1 (
    echo Vercel CLI installation failed.
    popd
    pause
    exit /b 1
)

echo.
echo Vercel CLI installed successfully!
echo You can now use 'vercel' command with the deploy script.

REM Verify installation
echo.
echo Verifying installation...
nodejs\npx.cmd vercel --version

popd
pause
