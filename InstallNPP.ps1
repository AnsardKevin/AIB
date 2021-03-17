#region Set logging

function Write-Log {
    Param($message)
    Write-Output "$(get-date -format 'yyyyMMdd HH:mm:ss') $message"
}
#endregion

try {
    Start-Process -filepath 'c:\temp\npp.7.9.4.Installer.exe' -Wait -ErrorAction Stop -ArgumentList '/S'
}
catch {
    $ErrorMessage = $_.Exception.message
    write-log "Error installing Notepad++: $ErrorMessage"
}