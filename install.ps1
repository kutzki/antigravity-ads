$ErrorActionPreference = "Stop"

$repoUrl = "https://github.com/kutzki/antigravity-ads.git"
$installDir = "$env:USERPROFILE\.gemini\antigravity\skills\antigravity-ads"
$tempDir = [System.IO.Path]::GetTempPath() + "antigravity-ads-install"

Write-Host "Installing antigravity-ads..." -ForegroundColor Cyan

if (Test-Path $installDir) {
    Write-Host "Existing installation found at $installDir. Removing..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force $installDir
}

if (Test-Path $tempDir) {
    Remove-Item -Recurse -Force $tempDir
}

Write-Host "Cloning repository..." -ForegroundColor Cyan
git clone --quiet $repoUrl $tempDir

if (-not $?) {
    Write-Host "Failed to clone repository. Is git installed?" -ForegroundColor Red
    exit 1
}

Write-Host "Copying skill to $installDir..." -ForegroundColor Cyan
New-Item -ItemType Directory -Force -Path (Split-Path $installDir) | Out-Null
Copy-Item -Recurse -Force "$tempDir\skill" $installDir

Write-Host "Installing Python dependencies..." -ForegroundColor Cyan
if (Get-Command "python" -ErrorAction SilentlyContinue) {
    python -m pip install -r "$tempDir\skill\requirements.txt"
} else {
    Write-Host "Python not found. Please install Python to use the PDF and web scraping tools." -ForegroundColor Yellow
}

Write-Host "Cleaning up..." -ForegroundColor Cyan
Remove-Item -Recurse -Force $tempDir

Write-Host "Installation complete! The antigravity-ads skill is now available." -ForegroundColor Green

