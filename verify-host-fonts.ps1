param(
  [string]$BaseUrl = "https://psindce.org.br"
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$assetsDir = Join-Path $root "dist\spa\assets"

if (-not (Test-Path $assetsDir)) {
  Write-Error "Assets folder not found: $assetsDir"
}

$targets = @(
  "fa-solid-900.ae17c16a.woff2",
  "flUhRq6tzZclQEJ-Vdg-IuiaDsNcIhQ8tQ.4a4dbc62.woff2",
  "KFOlCnqEu92Fr1MmEU9fBBc-.9ce7f3ac.woff"
)

$allOk = $true
foreach ($file in $targets) {
  $localPath = Join-Path $assetsDir $file
  if (-not (Test-Path $localPath)) {
    Write-Host "MISSING LOCAL: $file" -ForegroundColor Yellow
    $allOk = $false
    continue
  }

  $tmpPath = Join-Path $root ("tmp-verify-" + $file)
  $url = "$BaseUrl/assets/$file"

  try {
    Invoke-WebRequest -Uri $url -OutFile $tmpPath -UseBasicParsing

    $localHash = (Get-FileHash $localPath -Algorithm SHA256).Hash
    $remoteHash = (Get-FileHash $tmpPath -Algorithm SHA256).Hash
    $localSize = (Get-Item $localPath).Length
    $remoteSize = (Get-Item $tmpPath).Length
    $localSignature = [BitConverter]::ToString([IO.File]::ReadAllBytes($localPath)[0..3])
    $remoteSignature = [BitConverter]::ToString([IO.File]::ReadAllBytes($tmpPath)[0..3])

    if (($localHash -eq $remoteHash) -and ($localSignature -in @('77-4F-46-46', '77-4F-46-32')) -and ($remoteSignature -eq $localSignature)) {
      Write-Host "OK: $file ($localSize bytes)" -ForegroundColor Green
    }
    else {
      Write-Host "MISMATCH: $file" -ForegroundColor Red
      Write-Host "  local : $localHash ($localSize bytes)"
      Write-Host "  remote: $remoteHash ($remoteSize bytes)"
      Write-Host "  signatures: local $localSignature, remote $remoteSignature"
      $allOk = $false
    }
  }
  catch {
    Write-Host "FAILED: $file -> $url" -ForegroundColor Red
    Write-Host "  $_"
    $allOk = $false
  }
  finally {
    if (Test-Path $tmpPath) {
      Remove-Item $tmpPath -Force
    }
  }
}

if ($allOk) {
  Write-Host "All checked files match." -ForegroundColor Green
  exit 0
}

Write-Host "At least one file mismatched or failed." -ForegroundColor Yellow
exit 1
