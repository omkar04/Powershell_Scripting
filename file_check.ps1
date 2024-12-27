$Server="<remote_server>"
$File_Path="\\$Server\C$\file\path\file.txt"

if (Test-Path $File_Path){
   Write-Host "File exists on $remoteServer."
} else {
    Write-Host "File does not exist on $remoteServer."
}