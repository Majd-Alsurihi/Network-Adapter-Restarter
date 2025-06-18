# NetworkAdapterRestarter.ps1

# Relaunch as admin if needed, keeping the window open after execution
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Restarting script as administrator..."
    Start-Process powershell "-NoExit -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Get all network adapters (excluding disconnected)
$adapters = Get-NetAdapter | Where-Object { $_.Status -ne 'Disconnected' }

if ($adapters.Count -eq 0) {
    Write-Host "No network adapters found."
    Pause
    exit
}

# List adapters with numbers
Write-Host "Available Network Adapters:`n"
for ($i = 0; $i -lt $adapters.Count; $i++) {
    Write-Host "$($i + 1). $($adapters[$i].Name)"
}

# Prompt user for selection
$choice = Read-Host "`nEnter the number of the adapter to restart"
if (-not ($choice -as [int]) -or $choice -lt 1 -or $choice -gt $adapters.Count) {
    Write-Host "Invalid selection."
    Pause
    exit
}

$adapterName = $adapters[$choice - 1].Name

Write-Host "Restarting adapter: $adapterName"
Disable-NetAdapter -Name $adapterName -Confirm:$false
Start-Sleep -Seconds 3
Enable-NetAdapter -Name $adapterName -Confirm:$false

Write-Host "Done."
Pause