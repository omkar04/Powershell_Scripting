$remote_server=""
$remote_path="\\$remote_server\C$\path\"
Invoke-Command -ComputerName $remote_server -ScriptBlock{
    New-Item -Path $args[0] -ItemType Directory
} -ArgumentList $remote_path