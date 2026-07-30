# OpenCode Skills Setup Script for Windows
# This script copies the .opencode folder to the current directory

param(
    [string]$TargetPath = (Get-Location).Path
)

$SourcePath = Join-Path $PSScriptRoot "..\.opencode"
$TargetOpenCode = Join-Path $TargetPath ".opencode"

Write-Host "OpenCode Skills Setup" -ForegroundColor Cyan
Write-Host "=====================" -ForegroundColor Cyan
Write-Host ""

if (-not (Test-Path $SourcePath)) {
    Write-Error "Source .opencode folder not found at: $SourcePath"
    exit 1
}

if (Test-Path $TargetOpenCode) {
    $choice = Read-Host ".opencode already exists in target. Merge? (y/n)"
    if ($choice -ne "y") {
        Write-Host "Setup cancelled." -ForegroundColor Yellow
        exit 0
    }
    # Merge skills, agents, commands
    Copy-Item -Path "$SourcePath\skills\*" -Destination "$TargetOpenCode\skills\" -Recurse -Force
    Copy-Item -Path "$SourcePath\agents\*" -Destination "$TargetOpenCode\agents\" -Recurse -Force
    Copy-Item -Path "$SourcePath\commands\*" -Destination "$TargetOpenCode\commands\" -Recurse -Force
    Write-Host "Merged skills, agents, and commands into existing .opencode folder." -ForegroundColor Green
} else {
    Copy-Item -Path $SourcePath -Destination $TargetOpenCode -Recurse -Force
    Write-Host "Copied .opencode folder to: $TargetOpenCode" -ForegroundColor Green
}

Write-Host ""
Write-Host "Setup complete!" -ForegroundColor Green
Write-Host "Restart OpenCode to load the new configuration." -ForegroundColor Yellow
