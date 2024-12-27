$SERVICES_Name="vds"
$SERVICES=Get-Service -Name $SERVICES_Name

if ($SERVICES.Status -eq "Running"){
    Write-Host "$SERVICES_Name is running."
} else {
    Write-Host "$SERVICES_Name is not running."
    #Restart-Service -Name $SERVICES_Name
}