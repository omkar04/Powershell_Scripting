#to check on  remote serves
$server = "Server01"
Get-WmiObject -Class Win32_Processor -ComputerName $server | Select-Object LoadPercentage
Get-WmiObject -Class Win32_Processor | Select-Object LoadPercentage
Get-WmiObject -Class Win32_OperatingSystem | Select-Object FreePhysicalMemory, TotalVisibleMemorySize