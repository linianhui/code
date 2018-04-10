################################
# maven functions
################################

function Maven-SetEnvironmentVariable([string]$MavenHome = 'd:\.java\.apache-maven') {
    Env-SetVariable -Variable 'M2_HOME' -Value $MavenHome
    Env-TryAppendPathVariable -Value '%M2_HOME%\bin'
}
