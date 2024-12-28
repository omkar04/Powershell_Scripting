$SERVERS=@("SERVER1","SERVER2","SERVER3")
foreach ($server in $SERVERS){
    Write-Host $server
    Invoke-Command -ComputerName $server -ScriptBlock{
        deployment command.
    }
}