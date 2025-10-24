
# Function to set the history file path based on the current location
function Set-HistoryPathForCurrentLocation {
    $path = (Get-Location).Path
    $historyFile = Join-Path -Path $path -ChildPath "PowerShellHistory.txt"
    Set-PSReadLineOption -HistorySavePath $historyFile
    Write-Host "PSReadLine history file set to $historyFile"
}

# Set the log file when the session starts
Set-HistoryPathForCurrentLocation

# Automatically reset the history file when the location changes (requires PowerShell 7+)
if ($PSVersionTable.PSVersion.Major -ge 7) {
    Register-EngineEvent PowerShell.OnLocationChanged -Action {
        Set-HistoryPathForCurrentLocation
    }
}
