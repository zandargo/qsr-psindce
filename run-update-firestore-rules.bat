@echo off
REM Atualiza as regras do Firestore usando o nodejs local e o firebase-tools instalado no projeto

SETLOCAL
SET NODE_PATH=%~dp0nodejs
SET PATH=%NODE_PATH%;%PATH%

REM Usa npx local do nodejs para rodar o firebase deploy
"%~dp0nodejs\npx.cmd" firebase deploy --only firestore:rules
ENDLOCAL
