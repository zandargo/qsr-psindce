@echo off
REM Use local Node.js and npm to run the Quasar dev server
pushd %~dp0

REM Check which package manager was used (npm or pnpm)
if exist node_modules\.pnpm (
  echo Using pnpm-installed dependencies...
  if exist node_modules\.bin\quasar.cmd (
    REM Set path to include local Node.js before running Quasar
    set "PATH=%~dp0nodejs;%PATH%"
    code-insiders.cmd .
    node_modules\.bin\quasar.cmd dev
  ) else (
    echo Quasar CLI not found. Please run install.bat first.
    goto end
  )
) else (
  echo Using npm-installed dependencies...
  code-insiders.cmd .
  nodejs\npm.cmd run dev -m pwa
)

:end
popd
pause
