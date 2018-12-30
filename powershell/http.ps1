
function Http-Server() {
    Log-Debug "caddy -conf d:\.github\code\caddy\Caddyfile" $Args
    caddy -conf d:\.github\code\caddy\Caddyfile $Args
}