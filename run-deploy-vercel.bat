@echo off
REM Build and deploy project to Vercel using local Node.js and Vercel CLI
pushd %~dp0

REM Prepend local nodejs to PATH
set PATH=%~dp0nodejs;%PATH%

if exist "dist\spa" (
    rmdir /s /q "dist\spa" 2>nul
    if exist "dist\spa" (
        echo Error: dist\spa is locked by another process.
        echo Close Explorer previews, dev servers, terminals or sync tools using this folder and run again.
        popd
        pause
        exit /b 1
    )
)

echo Building project with Quasar (SPA)...
nodejs\pnpm.cmd run build -m spa

if errorlevel 1 (
    echo Quasar build failed. Aborting deployment.
    popd
    pause
    exit /b 1
)

echo.
echo Build completed successfully.
echo.

echo Deploying to Vercel...
echo.

REM Check if dist/spa directory exists
if not exist "dist\spa" (
    echo Error: dist\spa directory not found. Make sure you have built the project first.
    echo Run build-quasar.bat to build the project.
    popd
    pause
    exit /b 1
)

REM Deploy using Vercel CLI from project root, specifying the dist/spa directory
nodejs\npx.cmd vercel --prod .\dist\spa

if errorlevel 1 (
    echo Vercel deployment failed.
    echo Make sure you are logged in. Run login-vercel.bat if needed.
    popd
    pause
    exit /b 1
)

echo.
echo Deployment completed successfully!

popd
pause
