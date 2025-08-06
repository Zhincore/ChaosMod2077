<#
    .SYNOPSIS
        Downloads libraries required for IDEs.
    .EXAMPLE
        .\download-libs.ps1 [-reinstall]
#>

param (
    [switch]$reinstall
)

$libs = @{
    "Codeware" = "https://github.com/psiberx/cp2077-codeware/releases/download/v1.17.0/Codeware-1.17.0.zip"
    "CET" = "https://static.zhincore.eu/cp/cet-lua-b-1.27.0-231008.zip"
    "ImGUI" = "https://github.com/Nats-ji/CET_ImGui_lua_type_defines/archive/refs/heads/main.zip"
}

function Get-Lib {
    param (
        [parameter(Mandatory = $true)][string]$URL,
        [parameter(Mandatory = $true)][string]$Name
    )

    $FileName = "$Name.zip"
    $TargetPath = (Join-Path -Path ".\libs" -ChildPath $Name)
    $TmpPath = (Join-Path -Path ".\libs" -ChildPath $FileName)

    if (Test-Path -Path $TargetPath -PathType Container) {
        if ($reinstall) {
            Write-Information -MessageData "Cleaning up $TargetPath and reinstalling" -InformationAction Continue

            Remove-Item -Path $TargetPath -Recurse
        } else {
            Write-Information -MessageData "Skipping $Name, already installed" -InformationAction Continue
            return
        }
    }

    Write-Information -MessageData "Installing $Name to $TargetPath" -InformationAction Continue

    Invoke-WebRequest -Uri $URL -OutFile $TmpPath
    Expand-Archive -Path $TmpPath -DestinationPath $TargetPath
    Remove-Item -Path $TmpPath
}

Write-Information -MessageData "Downloading libs.." -InformationAction Continue

if (!(Test-Path -Path ".\libs" -PathType Container)) {
    New-Item -Path ".\libs" -ItemType Directory
}

foreach ($hash in $libs.GetEnumerator()) {
    Get-Lib -URL $hash.Value -Name $hash.Name
}

Write-Information -MessageData "Done" -InformationAction Continue
