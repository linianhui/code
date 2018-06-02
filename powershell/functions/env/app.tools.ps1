################################
# powershell env functions
################################

# https://www.putty.org/
function Env-SetPuttyEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.putty\'
}

# https://github.com/icsharpcode/ILSpy/releases
function Env-SetILSpyEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.ilspy\'
}

# https://www.nuget.org/downloads 
function Env-SetNugetEnvironmentVariable() {
    Env-TrySetVariable -Variable 'NUGET_PACKAGES' -Value 'd:\.cache\.nuget\'
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.nuget\'
}

# https://github.com/MicrosoftArchive/redis/releases
function Env-SetRedisEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.redis\'
}

# https://www.mongodb.org/dl/win32/x86_64-2008plus-ssl
function Env-SetMongoDBEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.mongodb\'
}

# https://developer.android.com/studio/releases/platform-tools.html
function Env-SetADBEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.adb\'
}

# http://httpd.apache.org/download.cgi
function Env-SetHttpdEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.httpd\'
}

# http://nginx.org/en/download.html
function Env-SetNginxEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.nginx\'
}

# https://maven.apache.org/
function Env-SetMavenEnvironmentVariable() {
    $MavenPath = 'd:\.app\.tools\.maven\'

    Env-TrySetVariable -Variable 'M2_HOME' -Value $MavenPath
    Env-TrySetVariable -Variable 'MAVEN_HOME' -Value $MavenPath
    Env-TryAppendPathVariable -Value "$MavenPath\bin\"
}

# https://gradle.org/releases/ 
function Env-SetGradleEnvironmentVariable() {
    $GradlePath = 'd:\.app\.tools\.gradle\'
    $GradleCachePath = 'd:\.cache\.gradle\'

    Env-TrySetVariable -Variable 'GRADLE_HOME' -Value $GradlePath
    Env-TrySetVariable -Variable 'GRADLE_USER_HOME' -Value $GradleCachePath
    Env-TryAppendPathVariable -Value "$GradlePath\bin\"
}

# https://projects.spring.io/spring-boot/
function Env-SetSpringBootCliEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.spring-boot-cli\bin\'
}