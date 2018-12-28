
function Http-Server() {
    Write-Host "caddy -port 2015 browse markdown $Args" -ForegroundColor Green
    caddy -port 2015 browse markdown $Args
}