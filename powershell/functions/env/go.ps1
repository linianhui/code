################################
# powershell env functions
################################

# https://golang.org/doc/install
function Env-SetGoEnvironmentVariable([string]$GoRoot = 'd:\.go\.sdk') {
    Env-TrySetVariable -Variable 'GOROOT' -Value $GoRoot
    Env-TryAppendPathVariable -Value "$GoRoot\bin"
}
