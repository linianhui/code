################################
# powershell env functions
################################

# https://github.com/icsharpcode/ILSpy/releases
function Env-SetILSpyEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.ilspy\'
}

# https://www.nuget.org/downloads 
function Env-SetNugetEnvironmentVariable() {
    # https://docs.microsoft.com/en-us/nuget/tools/cli-ref-environment-variables
    Env-TrySetVariable -Variable 'NUGET_PACKAGES' -Value 'd:\.cache\.nuget\'
    
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.nuget\'
}

# https://developer.android.com/studio/releases/platform-tools.html
function Env-SetADBEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.adb\'
}

# https://www.cpuid.com/softwares/cpu-z.html
function Env-SetCPUEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.cpu\'
}

# https://www.techpowerup.com/gpuz/
function Env-SetGPUEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.gpu\'
}

# http://www.superpi.net/Download/
function Env-SetPIEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.pi\'
}

# https://maven.apache.org/
function Env-SetMavenEnvironmentVariable() {
    $MavenPath = 'd:\.app\.tools\.maven\'

    # for maven 1
    Env-TrySetVariable -Variable 'MAVEN_HOME' -Value $MavenPath
    
    # for maven 2 or 3
    Env-TrySetVariable -Variable 'M2_HOME' -Value $MavenPath

    Env-TryAppendPathVariable -Value "$MavenPath\bin\"
}

# https://gradle.org/releases/ 
function Env-SetGradleEnvironmentVariable() {
    $GradlePath = 'd:\.app\.tools\.gradle\'
    $GradleCachePath = 'd:\.cache\.gradle\'

    # https://docs.gradle.org/current/userguide/installation.html
    Env-TrySetVariable -Variable 'GRADLE_HOME' -Value $GradlePath

    # https://docs.gradle.org/current/userguide/build_environment.html#sec:gradle_environment_variables
    Env-TrySetVariable -Variable 'GRADLE_USER_HOME' -Value $GradleCachePath

    Env-TryAppendPathVariable -Value "$GradlePath\bin\"
}

# https://projects.spring.io/spring-boot/
function Env-SetSpringBootCliEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.tools\.spring-boot-cli\bin\'
}