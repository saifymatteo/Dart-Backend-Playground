$values = Get-Content .env | Out-String | ConvertFrom-StringData

$Env:DB_HOST_ADDRESS=$values.DB_HOST_ADDRESS
$Env:DB_PORT=$values.DB_PORT
$Env:DB_NAME=$values.DB_NAME
$Env:DB_USERNAME=$values.DB_USERNAME
$Env:DB_PASSWORD=$values.DB_PASSWORD

dart run stormberry migrate