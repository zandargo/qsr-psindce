@echo off
REM Login to Vercel using local Node.js and Vercel CLI
pushd %~dp0

REM Prepend local nodejs to PATH
set PATH=%~dp0nodejs;%PATH%

echo Checking current Vercel login status...
echo.

REM Check if user is already logged in to Vercel
nodejs\npx.cmd vercel whoami

if errorlevel 1 (
    echo You are not currently logged in to Vercel.
    echo.
    echo Starting Vercel login process...
    echo.

    nodejs\npx.cmd vercel login

    if errorlevel 1 (
        echo Vercel login failed.
        popd
        pause
        exit /b 1
    )

    echo.
    echo Login successful!
    echo.
    echo Verifying login...
    nodejs\npx.cmd vercel whoami
) else (
    echo You are already logged in to Vercel.
    echo.
)

echo.
echo You can now use the deploy-vercel.bat script to deploy your project.

popd
pause
