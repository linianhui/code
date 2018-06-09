################################
# powershell env functions
################################

# https://www.putty.org/
function Env-SetPuttyEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.network\.putty\'
}

# https://github.com/shadowsocks/shadowsocks-windows
function Env-SetShadowsocksEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.network\.shadowsocks\'
}