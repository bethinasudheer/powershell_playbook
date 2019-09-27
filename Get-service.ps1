$Services = Get-Service

$Services_output = $Services | ForEach-Object {
[PSCustomObject]@{
"ServiceName" = $_.ServiceName
"Name" = $_.Name
"Status" = $_.Status
"DisplayName" = $_.DisplayName
}
}
$Services_output | Export-Csv  -Force -NoTypeInformation C:\ansible\services.csv