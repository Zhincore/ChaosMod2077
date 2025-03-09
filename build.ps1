<#
    .SYNOPSIS
        Build script.
    .EXAMPLE
        .\build.ps1
#>

# Wkit file paths
$projectPath = ".\WolvenKit"
$rawPath = "$projectPath\source\raw"
$archivePath = "$projectPath\source\archive"
$outputPath = "$projectPath\packed"

# Mod files path
$modPath = "zhincore\chaosmod"
$sourcePath = "$rawPath\$modPath"
$targetPath = "$archivePath\$modPath"

Write-Host "Starting build..."

# Convert translations
Write-Host "Converting translations..."
.\localizations\convert.ps1
cp77tools convert deserialise $sourcePath -w "*.json.json" -o $targetPath

# Create archive
Write-Host "Creating archive..."
cp77tools pack $archivePath -o $outputPath
