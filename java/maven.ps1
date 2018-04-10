################################
# maven functions
################################
Param(
    [string]$MavenHome = 'd:\.java\.maven'
)

function Maven-SetEnvironmentVariable() {
    Env-SetVariable -Variable 'MAVEN_HOME' -Value $MavenHome
    Env-TryAppendPathVariable -Value '%MAVEN_HOME%\bin'
}

Maven-SetEnvironmentVariable