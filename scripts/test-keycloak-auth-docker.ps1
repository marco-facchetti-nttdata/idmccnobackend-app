$ErrorActionPreference = "Stop"

$tokenUrl = "http://127.0.0.1:8081/realms/IdmCCNO/protocol/openid-connect/token"
$body = @{
    grant_type = "password"
    client_id = "idmCCNOClient"
    username = "ccno-test-user@example.local"
    password = "TestPassword123!"
}

$response = Invoke-RestMethod -Method Post -Uri $tokenUrl -Body $body -ContentType "application/x-www-form-urlencoded"
if (-not $response.access_token) {
    throw "Keycloak did not return an access_token."
}

Write-Host "Keycloak token OK"
