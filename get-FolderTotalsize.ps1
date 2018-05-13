"{0:N2} GB"  -f ((Get-ChildItem C:\Users -Recurse | foreach`
{$totalsize+=$_.length;$totalsize / 1GB}))
