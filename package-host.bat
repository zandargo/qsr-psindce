@echo off
REM Build SPA and create a ZIP package ready to upload on Apache hosting
pushd %~dp0

REM Prepend local nodejs to PATH
set PATH=%~dp0nodejs;%PATH%

echo Cleaning previous outputs...
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
if exist "deploy-package" rmdir /s /q "deploy-package"

echo Building project with Quasar (SPA)...
call nodejs\pnpm.cmd run build -m spa

if errorlevel 1 (
    echo Quasar build failed. Aborting package generation.
    popd
    pause
    exit /b 1
)

if not exist "dist\spa\index.html" (
    echo Error: dist\spa\index.html not found.
    popd
    pause
    exit /b 1
)

if not exist "dist\spa\.htaccess" (
    echo Warning: dist\spa\.htaccess not found.
    echo Make sure public\.htaccess exists before deploying.
)

echo Copying deploy files...
mkdir "deploy-package"
robocopy "dist\spa" "deploy-package" /E >nul

if errorlevel 8 (
    echo Failed to copy build output to deploy-package.
    popd
    pause
    exit /b 1
)

if not exist "deploy-package\icons\favicon-32x32.png" (
    echo Error: deploy-package\icons\favicon-32x32.png is missing.
    echo The complete deploy-package folder must be uploaded, including the icons folder.
    popd
    pause
    exit /b 1
)

if not exist "deploy-package\icons\Logo-double-02b1.svg" (
    echo Error: deploy-package\icons\Logo-double-02b1.svg is missing.
    echo The complete deploy-package folder must be uploaded, including the icons folder.
    popd
    pause
    exit /b 1
)

echo Creating ZIP archive...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Compress-Archive -Path '.\deploy-package\*' -DestinationPath '.\deploy-package.zip' -Force"

if errorlevel 1 (
    echo Failed to create deploy-package.zip
    popd
    pause
    exit /b 1
)

echo.
echo Package created successfully:
echo   deploy-package\  (folder to upload)
echo   deploy-package.zip (zip to upload)
echo.

popd
pause
