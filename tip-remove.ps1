# Define the registry key path and value name
$keyPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Personalization"
$valueName = "NoLockScreenTips"

# Check if the registry key exists, if not, create it
if (-not (Test-Path $keyPath)) {
    New-Item -Path $keyPath -Force | Out-Null
}

# Set the value of the registry entry to disable lock screen tips
Set-ItemProperty -Path $keyPath -Name $valueName -Value 1

Write-Host "Lock screen tips have been disabled."


