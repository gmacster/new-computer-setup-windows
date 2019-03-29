Write-Output "Removing ads from the start menu, task bar, and lock screen..."

$cdmRegistry = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
Set-Registry -Path $cdmRegistry -Name SubscribedContent-338388Enabled -Value 0
Set-Registry -Path $cdmRegistry -Name SubscribedContent-338389Enabled -Value 0
Set-Registry -Path $cdmRegistry -Name SystemPaneSuggestionsEnabled -Value 0
Set-Registry -Path $cdmRegistry -Name RotatingLockScreenEnabled -Value 0
Set-Registry -Path $cdmRegistry -Name RotatingLockScreenOverlayEnabled -Value 0
