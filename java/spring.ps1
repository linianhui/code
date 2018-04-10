################################
# gradle functions
################################
Param(
    [string]$SpringBootCliBinPath = 'd:\.java\.spring-boot-cli\bin'
)

function SpringBootCli-SetEnvironmentVariable() {
    Env-TryAppendPathVariable -Value $SpringBootCliBinPath
}

SpringBootCli-SetEnvironmentVariable
