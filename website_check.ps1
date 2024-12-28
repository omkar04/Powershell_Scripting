$WEBSITE_Url="www.movies4u.com"
$RESPONCE= Invoke-WebRequest -Uri $WEBSITE_Url -UseBasicParsing -TimeoutSec 5
if($RESPONCE.StatusCode -eq 200){
    Write-Host "Website is healthy."
}
else {
    Write-Host "Website is down."
}