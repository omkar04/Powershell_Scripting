$RemoteComputer="SERVER01"
$DIR="E:\Devops_que\Powershell_Scripting\file_check.ps1"
Invoke-Command -ComputerName $RemoteComputer -ScriptBlock{
    & $args[0]

} -ArgumentList $DIR