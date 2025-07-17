
$ErrorActionPreference = 'Stop'
Try {
    Start-Process powershell -ArgumentList "-NoProfile -WindowStyle Hidden -Command &{ {0} }" -Verb RunAs -ErrorAction Stop
    exit
} Catch {
    Write-Error "UAC Bypass failed, running normally."
    {0}
}
