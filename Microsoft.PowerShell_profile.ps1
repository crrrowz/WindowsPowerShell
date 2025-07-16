# تعاريف Alias لنسخ البايثون (حسب طلبك)
Set-Alias python39 "C:\Program Files\Python39\python.exe"
Set-Alias python3.12 "C:\Python312\python.exe"

# دالة لتعيين مسار حفظ التاريخ حسب المجلد الحالي
function Set-HistoryPathForCurrentLocation {
    $path = (Get-Location).Path
    $historyFile = Join-Path -Path $path -ChildPath "PowerShellHistory.txt"
    Set-PSReadLineOption -HistorySavePath $historyFile
    Write-Host "PSReadLine history file set to $historyFile"
}

# تعيين ملف السجل عند بدء الجلسة
Set-HistoryPathForCurrentLocation

# إعادة تعيين ملف السجل تلقائيًا عند تغيير المجلد (يتطلب PowerShell 7+)
if ($PSVersionTable.PSVersion.Major -ge 7) {
    Register-EngineEvent PowerShell.OnLocationChanged -Action {
        Set-HistoryPathForCurrentLocation
    }
}
