################################
# powershell env functions
################################

# http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
function Env-SetJavaEnvironmentVariable([string]$JavaPath = 'c:\program files\java\jdk1.8.0_162') {
    Env-TrySetVariable -Variable 'JAVA_HOME' -Value $JavaPath
    Env-TrySetVariable -Variable 'CLASSPATH' -Value ".;$JavaPath\lib;$JavaPath\lib\tools.jar"
    Env-TryAppendPathVariable -Value "$JavaPath\bin"
}

# https://maven.apache.org/
function Env-SetMavenEnvironmentVariable([string]$MavenPath = 'd:\.java\.maven') {
    Env-TrySetVariable -Variable 'MAVEN_HOME' -Value $MavenPath
    Env-TryAppendPathVariable -Value "$MavenPath\bin"
}

# https://gradle.org/releases/ 
function Env-SetGradleEnvironmentVariable([string]$GradlePath = 'd:\.java\.gradle',
    [string]$GradleLocalRepositoryPath = 'd:\.java\.gradle-local-repository'
) {
    Env-TrySetVariable -Variable 'GRADLE_HOME' -Value $GradlePath
    Env-TrySetVariable -Variable 'GRADLE_USER_HOME' -Value $GradleLocalRepositoryPath
    Env-TryAppendPathVariable -Value "$GradlePath\bin"
}

# https://projects.spring.io/spring-boot/
function Env-SetSpringBootCliEnvironmentVariable([string]$SpringBootCliPath = 'd:\.java\.spring-boot-cli') {
    Env-TryAppendPathVariable -Value "$SpringBootCliPath\bin"
}
