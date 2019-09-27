$Hotfixes = Get-HotFix 


$HotFixes_output = $Hotfixes | ForEach-Object {
[PSCustomObject]@{ 
"ComputerName" = $_.PSComputerName
"Description" = $_.Description
"HotFixID" = $_.HotFixID
"InstalledDate" = $_.InstalledOn
"InstalledBy" = $_.InstalledBy
 }
}

$HotFixes_output | Export-Csv  -Force -NoTypeInformation C:\ansible\Hotfixes.csv