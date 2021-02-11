$SRC = "$($env:USERPROFILE)$('\AppData\Roaming\DarkSoulsIII')"
$ARCHIVE = "$(Get-Location)$('\archive\')$((Get-Date).tostring('yyyyMMdd-hhmmss'))"
$LATEST = "$(Get-Location)$('\latest')"

Remove-Item $LATEST -Recurse -Force -ErrorAction Ignore
Copy-Item -Path $SRC -Destination $LATEST -Recurse -Force
Copy-Item -Path $SRC -Destination $ARCHIVE -Recurse -Force