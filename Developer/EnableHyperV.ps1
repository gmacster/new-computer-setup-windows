Write-Output "Enabling Hyper-V..."

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
