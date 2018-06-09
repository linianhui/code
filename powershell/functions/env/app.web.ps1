################################
# powershell env functions
################################

# http://httpd.apache.org/download.cgi
function Env-SetHttpdEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.web\.httpd\'
}

# http://nginx.org/en/download.html
function Env-SetNginxEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.web\.nginx\'
}