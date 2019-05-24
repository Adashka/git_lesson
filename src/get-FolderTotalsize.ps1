Get-ChildItem "C:\ISOs" -Recurse | foreach {$totalsize +=$_.length};"{0:N2} GB"  -f ($totalsize /1GB)

Write-host "### OR with measure and Sum ###" -ForegroundColor Green

"{0:N2} GB" -f ((Get-ChildItem C:\ISOs -Recurse | Measure-Object -Property Length -Sum -ErrorAction stop).Sum / 1GB)