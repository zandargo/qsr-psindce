@echo off
REM Build and deploy project to Vercel using local Node.js and Vercel CLI
pushd %~dp0

REM Prepend local nodejs to PATH
set PATH=%~dp0nodejs;%PATH%

@REM echo Building project with Quasar...
@REM nodejs\pnpm.cmd run build

@REM if errorlevel 1 (
@REM     echo Quasar build failed. Aborting deployment.
@REM     popd
@REM     pause
@REM     exit /b 1
@REM )

@REM echo.
@REM echo Build completed successfully!
@REM echo.

@REM REM Check if dist/spa directory exists
@REM if not exist "dist\spa" (
@REM     echo Error: dist\spa directory not found. Make sure the build completed successfully.
@REM     popd
@REM     pause
@REM     exit /b 1
@REM )

@REM )

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
