@echo off
REM Build SPA bundle using local Node.js tools
pushd %~dp0

REM Prepend local nodejs to PATH
set PATH=%~dp0nodejs;%PATH%

echo Cleaning previous SPA build...
if exist "dist\spa" (
    rmdir /s /q "dist\spa" 2>nul
    if exist "dist\spa" (
        echo Error: dist\spa is locked by another process.
        echo Close Explorer previews, dev servers, terminals or sync tools using this folder and try again.
        popd
        pause
        exit /b 1
    )
)

echo Building project with Quasar...
nodejs\pnpm.cmd run build -m spa

if errorlevel 1 (
    echo Quasar build failed. Aborting deployment.
    popd
    pause
    exit /b 1
)

if not exist "dist\spa\index.html" (
    echo Error: dist\spa\index.html not found after build.
    popd
    pause
    exit /b 1
)

if exist "dist\spa\.htaccess" (
    echo OK: .htaccess found in dist\spa
) else (
    echo Warning: .htaccess not found in dist\spa
)

echo Build completed successfully.

popd
pause
