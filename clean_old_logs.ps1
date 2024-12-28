$Dir="E:\Task_01\backup_01\myapp"
$daysOld = 30
Get-ChildItem -Path $Dir | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$daysOld)} | Remove-Item