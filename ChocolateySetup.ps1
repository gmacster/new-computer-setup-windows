Write-Output "Installing Chocolatey..."

$downloadUrl = "https://chocolatey.org/install.ps1"

$installScript = (New-Object System.Net.WebClient).DownloadString($downloadUrl)

Invoke-Expression $installScript

Write-Output "Installing Chocolatey Packages..."

choco install -y .\choco.config
