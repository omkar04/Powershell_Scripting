$DIR="E:\Task_01\backup_01\myapp"
$filter="*.log" 
while ($true) {
    $newfile=Get-ChildItem -Path $DIR -Filter $filter
    if($newfile){
        Write-Host "New file detected"
    }
    Start-Sleep -Seconds 5
}