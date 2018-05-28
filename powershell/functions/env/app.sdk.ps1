################################
# powershell env functions
################################

# http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
# https://github.com/ojdkbuild/ojdkbuild
# http://openjdk.java.net/install/
function Env-SetJavaEnvironmentVariable() {
    $JavaSdkPath = 'd:\.app\.sdk\.java\jdk\'

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

# https://nodejs.org/en/download/
function Env-SetNodeEnvironmentVariable() {
    $NodeSdkPath = 'd:\.app\.sdk\.node\'
    $NodeCachePath = 'd:\.cache\.node\'

    Env-TrySetVariable -Variable 'NODE_PATH' -Value "$NodeSdkPath\node_modules\" 
    Env-TryAppendPathVariable -Value $NodeSdkPath

    npm config set cache $NodeCachePath
}
