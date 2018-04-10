################################
# gradle functions
################################
Param(
    [string]$GradleHome = 'd:\.java\.gradle',
    [string]$GradleUserHome = 'd:\.java\.gradle-repository'
)

function Gradle-SetEnvironmentVariable() {
    Env-SetVariable -Variable 'GRADLE_HOME' -Value $GradleHome
    Env-SetVariable -Variable 'GRADLE_USER_HOME' -Value $GradleUserHome
    Env-TryAppendPathVariable -Value '%GRADLE_HOME%\bin'
}

Gradle-SetEnvironmentVariable
