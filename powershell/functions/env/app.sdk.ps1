################################
# powershell env functions
################################

# http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
function Env-SetJavaEnvironmentVariable() {
    $JavaSdkPath = 'd:\.app\.sdk\.java\jdk1.8.0_162\'

    Env-TrySetVariable -Variable 'JAVA_HOME' -Value $JavaSdkPath
    Env-TrySetVariable -Variable 'CLASSPATH' -Value ".;$JavaSdkPath\lib;$JavaSdkPath\lib\tools.jar"
    Env-TryAppendPathVariable -Value "$JavaSdkPath\bin\"
}

# https://golang.org/doc/install
function Env-SetGoEnvironmentVariable() {
    $GoSdkPath = 'd:\.app\.sdk\.go\'
    $GoCachePath = 'd:\.cache\.go\'

    Env-TrySetVariable -Variable 'GOROOT' -Value $GoSdkPath
    Env-TrySetVariable -Variable 'GOCACHE' -Value $GoCachePath
    Env-TryAppendPathVariable -Value "$GoSdkPath\bin\"
}

# https://rubyinstaller.org/downloads/
function Env-SetRubyEnvironmentVariable() {
    $RubySdkPath = 'd:\.app\.sdk\.ruby\'

    Env-TrySetVariable -Variable 'RUBY_HOME' -Value $RubySdkPath
    Env-TryAppendPathVariable -Value "$RubySdkPath\bin\"
}

