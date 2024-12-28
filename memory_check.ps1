$MemoryUsage= Get-WmiObject Win32_OperatingSystem
$UsedMemory= $MemoryUsage.TotalVisibleMemorySize - $MemoryUsage.FreePhysicalMemory
$UsedMemoryPercentage= ($UsedMemory / $MemoryUsage.TotalVisibleMemorySize) *100
Write-Host "Memory Usage : $([math]::round($UsedMemoryPercentage, 2))%"