$action=  New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "E:\Devops_que\Powershell_Scripting\remove.ps1"
$trigger= New-ScheduledTaskTrigger -At 5:51PM -Once
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "DEPLOY-02" 