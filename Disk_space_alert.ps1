# Disk space calculation
$disk = Get-PSDrive -Name C
$freespace = ($disk.Free / ($disk.Used + $disk.Free)) * 100

# SMTP Configuration
$SmtpServer = "smtp.gmail.com"
$SmtpPort = 587
$Username = "omrshinde1999@gmail.com"
$Password = "khya xbve cohf xxpp"  # Replace this with a secure app password.
$SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($Username, $SecurePassword)

# Disk space alert logic
if ($freespace -lt 10) {
    $Subject = "Low Disk Space Alert"
    $Body = "Disk space on $($disk.Name) is below 10%."
} else {
    $Subject = "Disk Space OK"
    $Body = "Disk space on $($disk.Name) is greater than 10%."
}

# Send email
Send-MailMessage -From $Username `
    -To "shindeo522@gmail.com" `
    -Subject $Subject `
    -Body $Body `
    -SmtpServer $SmtpServer `
    -Port $SmtpPort `
    -Credential $Credential `
    -UseSsl
