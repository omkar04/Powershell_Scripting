$SRC_Dir="E:\Task_01\backup_01\myapp"
$DEST_DIR="E:\Task_01\backup_02"
Copy-Item -Path $SRC_Dir -Destination $DEST_DIR -Recurse
Write-Host "copied"