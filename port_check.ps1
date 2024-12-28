$remote_server="Server01"
$port=8080
Test-NetConnection -Port -ComputerName $remote_server $port
Test-NetConnection -Port $port 