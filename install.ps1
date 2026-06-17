Write-Host "🎭 AlterEgo-DevCompanion Installer for Windows" -ForegroundColor Cyan
Write-Host "----------------------------------------------------"

# Define destination directory
$DestDir = "$env:APPDATA\antigravity\plugins\alterego-dev-companion\skills"

# Create destination directory if it doesn't exist
if (-not (Test-Path -Path $DestDir)) {
    Write-Host "Creating directory: $DestDir"
    New-Item -ItemType Directory -Force -Path $DestDir | Out-Null
}

# Copy SKILL.md
if (Test-Path -Path "SKILL.md") {
    Write-Host "Copying SKILL.md to $DestDir..."
    Copy-Item -Path "SKILL.md" -Destination "$DestDir\" -Force
    Write-Host "✓ Successfully installed AlterEgo-DevCompanion!" -ForegroundColor Green
} else {
    Write-Warning "Error: SKILL.md not found in the current directory."
    Write-Warning "Please run this script from the project root."
    Exit 1
}
