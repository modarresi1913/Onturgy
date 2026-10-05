# push-onturgy.ps1
# One-script setup and push of the ONTURGY repository to GitHub
# Usage: .\push-onturgy.ps1
# Author: Onturgy project
# Date: 2026-10-05

$ErrorActionPreference = "Stop"

$REPO_URL = "https://github.com/modarresi1913/Onturgy.git"
$TARBALL_NAME = "onturgy-repo.tar.gz"
$EXTRACT_DIR = "$env:TEMP\onturgy-extract"

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  ONTURGY — One-Script GitHub Push" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Get the tarball
Write-Host "[1/6] Locating tarball..." -ForegroundColor Yellow

$tarballPath = $null

# Check common locations
$possiblePaths = @(
    "$PWD\$TARBALL_NAME",
    "$env:USERPROFILE\Downloads\$TARBALL_NAME",
    "$env:USERPROFILE\Desktop\$TARBALL_NAME",
    "$env:TEMP\$TARBALL_NAME"
)

foreach ($path in $possiblePaths) {
    if (Test-Path $path) {
        $tarballPath = $path
        Write-Host "  Found: $tarballPath" -ForegroundColor Green
        break
    }
}

if (-not $tarballPath) {
    Write-Host "  Tarball not found in standard locations." -ForegroundColor Yellow
    $manualPath = Read-Host "  Enter full path to $TARBALL_NAME (or press Enter to skip if you haven't downloaded it yet)"
    if ($manualPath -and (Test-Path $manualPath)) {
        $tarballPath = $manualPath
        Write-Host "  Found: $tarballPath" -ForegroundColor Green
    } else {
        Write-Host "  Tarball not found." -ForegroundColor Red
        Write-Host ""
        Write-Host "  Please download it first from the web preview page:" -ForegroundColor Cyan
        Write-Host "    https://preview-<bot-id>.space-z.ai/" -ForegroundColor Cyan
        Write-Host "  Look for the violet 'GitHub-ready Repository Tarball' card." -ForegroundColor Cyan
        Write-Host "  Save the file to your Downloads folder, then re-run this script." -ForegroundColor Cyan
        exit 1
    }
}

# Step 2: Clean extract directory
Write-Host ""
Write-Host "[2/6] Cleaning extract directory..." -ForegroundColor Yellow
if (Test-Path $EXTRACT_DIR) {
    Remove-Item -Recurse -Force $EXTRACT_DIR
}
New-Item -ItemType Directory -Path $EXTRACT_DIR | Out-Null
Write-Host "  Cleaned: $EXTRACT_DIR" -ForegroundColor Green

# Step 3: Extract tarball
Write-Host ""
Write-Host "[3/6] Extracting tarball..." -ForegroundColor Yellow
tar -xzf $tarballPath -C $EXTRACT_DIR
if ($LASTEXITCODE -ne 0) {
    Write-Host "  Failed to extract tarball. tar.exe error." -ForegroundColor Red
    exit 1
}

$repoDir = Get-ChildItem -Directory -Path $EXTRACT_DIR | Select-Object -First 1
if (-not $repoDir) {
    Write-Host "  No directory found in extracted tarball." -ForegroundColor Red
    exit 1
}

Set-Location $repoDir.FullName
Write-Host "  Extracted to: $($repoDir.FullName)" -ForegroundColor Green

# Verify we're in the right place
Write-Host ""
Write-Host "  Files in extracted repository:" -ForegroundColor Cyan
Get-ChildItem -File | Select-Object Name | ForEach-Object { Write-Host "    - $($_.Name)" }
Get-ChildItem -Directory | Select-Object Name | ForEach-Object { Write-Host "    - $($_.Name)/" }

if (-not (Test-Path "README.md") -or -not (Test-Path "KERNEL.md")) {
    Write-Host ""
    Write-Host "  ERROR: README.md or KERNEL.md not found. The tarball may be corrupted." -ForegroundColor Red
    exit 1
}

# Step 4: Git init
Write-Host ""
Write-Host "[4/6] Initializing git repository..." -ForegroundColor Yellow
git init 2>&1 | Out-Null
git branch -M main
Write-Host "  Git repository initialized on 'main' branch." -ForegroundColor Green

# Step 5: Add and commit
Write-Host ""
Write-Host "[5/6] Staging files and committing..." -ForegroundColor Yellow
git add .
git commit -m "Initial commit: ONTURGY kernel v2 + 4 empirical passes (45 files)" 2>&1 | Out-Null

$fileCount = (git ls-files | Measure-Object).Count
Write-Host "  Committed $fileCount files to the local repository." -ForegroundColor Green

# Step 6: Push to GitHub
Write-Host ""
Write-Host "[6/6] Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "  Remote: $REPO_URL" -ForegroundColor Cyan
Write-Host ""
Write-Host "  NOTE: GitHub will now ask you to authenticate." -ForegroundColor Yellow
Write-Host "  - If a browser opens, sign in to GitHub there." -ForegroundColor Yellow
Write-Host "  - If terminal asks for username, type: modarresi1913" -ForegroundColor Yellow
Write-Host "  - If terminal asks for password, paste your Personal Access Token (NOT your GitHub password)." -ForegroundColor Yellow
Write-Host "    (Create one at https://github.com/settings/tokens with scope 'repo')" -ForegroundColor Yellow
Write-Host ""

git remote remove origin 2>&1 | Out-Null
git remote add origin $REPO_URL
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  ✅ SUCCESS — Repository pushed!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "  View your repository at:" -ForegroundColor Cyan
    Write-Host "    https://github.com/modarresi1913/Onturgy" -ForegroundColor Cyan
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "  ❌ Push failed (exit code $LASTEXITCODE)" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "Common fixes:" -ForegroundColor Yellow
    Write-Host "  - 'Authentication failed' → create a fresh Personal Access Token at https://github.com/settings/tokens with scope 'repo'" -ForegroundColor Yellow
    Write-Host "  - 'remote origin already exists' → already handled by this script" -ForegroundColor Yellow
    Write-Host "  - 'rejected (fetch first)' → run: git pull origin main --allow-unrelated-histories; git push -u origin main" -ForegroundColor Yellow
}

Write-Host ""
Read-Host "Press Enter to close"
