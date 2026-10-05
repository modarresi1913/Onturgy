# quick-start.ps1
# Simple PowerShell launcher that downloads push-onturgy.ps1 from the tarball location
# Just run this in PowerShell after downloading onturgy-repo.tar.gz

Write-Host ""
Write-Host "ONTURGY — Quick Start" -ForegroundColor Cyan
Write-Host ""

# Check if tarball exists in common locations
$tarball = $null
$paths = @(
    "$PWD\onturgy-repo.tar.gz",
    "$env:USERPROFILE\Downloads\onturgy-repo.tar.gz",
    "$env:USERPROFILE\Desktop\onturgy-repo.tar.gz"
)

foreach ($p in $paths) {
    if (Test-Path $p) { $tarball = $p; break }
}

if (-not $tarball) {
    Write-Host "Tarball not found. Please download onturgy-repo.tar.gz from the preview page first." -ForegroundColor Red
    exit 1
}

Write-Host "Found tarball: $tarball" -ForegroundColor Green
Write-Host ""

# Extract just the push script
$tempDir = "$env:TEMP\onturgy-setup"
if (Test-Path $tempDir) { Remove-Item -Recurse -Force $tempDir }
New-Item -ItemType Directory -Path $tempDir | Out-Null
tar -xzf $tarball -C $tempDir
$repoDir = Get-ChildItem -Directory -Path $tempDir | Select-Object -First 1

Write-Host "Running push-onturgy.ps1..." -ForegroundColor Cyan
Write-Host ""
& "$($repoDir.FullName)\push-onturgy.ps1"
