@echo off
REM Use local Node.js to install dependencies using pnpm
pushd %~dp0

REM Check if pnpm is installed in the local nodejs folder
if not exist nodejs\pnpm.cmd (
    echo Installing pnpm using local npm...
    nodejs\npm.cmd install -g pnpm
)

echo Installing dependencies with pnpm...
nodejs\pnpm.cmd install

popd
pause
