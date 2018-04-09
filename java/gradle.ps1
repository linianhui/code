################################
# gradle functions
################################

function Gradle-SetEnvironmentVariable() {
    Env-SetVariable -Variable 'GRADLE_HOME' -Value 'd:\.java\.gradle'
    Env-SetVariable -Variable 'GRADLE_USER_HOME' -Value 'd:\.java\.gradle-repository'
    Env-TryAppendPathVariable -Value '%GRADLE_HOME%\bin'
}
