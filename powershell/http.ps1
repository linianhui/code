
function Http-Server() {
    Log-Debug "caddy -port 2015 browse markdown $Args"
    caddy -port 2015 browse markdown $Args
}