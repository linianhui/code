################################
# java functions
################################
Param(
    [string]$JavaHome = $(throw "JavaHome is null!")
)

function Java-SetEnvironmentVariable() {
    Env-SetVariable -Variable 'JAVA_HOME' -Value $JavaHome
    Env-SetVariable -Variable 'CLASSPATH' -Value '.;%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar'
    Env-TryAppendPathVariable -Value '%JAVA_HOME%\bin'
}

Java-SetEnvironmentVariable
