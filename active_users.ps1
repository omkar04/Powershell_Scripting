#$remoteServer = "Server01"
#Get-WmiObject -Class Win32_ComputerSystem -ComputerName $remoteServer | Select-Object UserName
Get-WmiObject -Class Win32_ComputerSystem  | Select-Object UserName