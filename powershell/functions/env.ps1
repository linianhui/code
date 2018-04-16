################################
# powershell env functions
################################

function script:Env-TrySetVariable ([string]$Variable = $(throw "Variable is null!"),
    [string]$Value = $(throw "Value is null!")) {
    $Target = [System.EnvironmentVariableTarget]::Machine

    # 输出旧值
    [string]$OldValue = [System.Environment]::GetEnvironmentVariable($Variable, $Target);
    Write-Host "[$Target][$Variable] 旧值:" $OldValue -ForegroundColor Gray

    if ($OldValue -eq $Value) {
        Write-Host "[$Target][$Variable] 新值:" $Value -ForegroundColor Green
        Write-Host "检测到未发送变化，跳过设置。" -ForegroundColor Yellow
        return
    }

    # 设置环境变量
    [System.Environment]::SetEnvironmentVariable($Variable, $Value, $Target)
    
    # 输出新值
    [string]$NewValue = [System.Environment]::GetEnvironmentVariable($Variable, $Target);
    Write-Host "[$Target][$Variable] 设置成功！" -ForegroundColor Green
    Write-Host "[$Target][$Variable] 新值:" $NewValue -ForegroundColor Green
}

function script:Env-TryAppendPathVariable ([string]$Value = $(throw "Value is null!")) {
    $Target = [System.EnvironmentVariableTarget]::Machine
    $Variable = 'Path'
    # 获取旧值
    [string]$OldValue = [System.Environment]::GetEnvironmentVariable($Variable, $Target);

    # 检测是否已经存在
    if ($OldValue.Split(';').Contains($Value)) {
        Write-Host "[$Target][$Variable]中已经包含需要追加的值：$Value" -ForegroundColor Yellow
        return
    }
    
    # 追加新值
    [string]$NewValue = $OldValue;
    if ($OldValue.EndsWith(';')) {
        $NewValue = $OldValue + $Value + ';'
    }
    else {
        $NewValue = $OldValue + ';' + $Value + ';'
    }

    Env-TrySetVariable -Variable $Variable -Value $NewValue
}

# https://www.putty.org/
function Env-SetPuttyEnvironmentVariable([string]$PuttyPath = 'd:\.app\.putty\') {
    Env-TryAppendPathVariable -Value $PuttyPath
}

# https://github.com/icsharpcode/ILSpy/releases
function Env-SetILSpyEnvironmentVariable([string]$ILSpyPath = 'd:\.app\.ilspy\') {
    Env-TryAppendPathVariable -Value $ILSpyPath
}

# https://www.nuget.org/downloads 
function Env-SetNugetEnvironmentVariable([string]$NugetPath = 'd:\.app\.nuget\') {
    Env-TryAppendPathVariable -Value $NugetPath
}

# https://github.com/MicrosoftArchive/redis/releases
function Env-SetRedisEnvironmentVariable([string]$RedisPath = 'd:\.app\.redis\') {
    Env-TryAppendPathVariable -Value $RedisPath
}

# https://www.mongodb.org/dl/win32/x86_64-2008plus-ssl
function Env-SetMongoDBEnvironmentVariable([string]$MongoDBPath = 'd:\.app\.mongodb\') {
    Env-TryAppendPathVariable -Value $MongoDBPath
}

# https://developer.android.com/studio/releases/platform-tools.html
function Env-SetADBEnvironmentVariable([string]$ADBPath = 'd:\.app\.adb\') {
    Env-TryAppendPathVariable -Value $ADBPath
}

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

# https://golang.org/doc/install
function Env-SetGoEnvironmentVariable([string]$GoRoot = 'd:\.go\.sdk') {
    Env-TrySetVariable -Variable 'GOROOT' -Value $GoRoot
    Env-TryAppendPathVariable -Value "$GoRoot\bin"
}

# https://rubyinstaller.org/downloads/
function Env-SetRubyEnvironmentVariable([string]$RubyPath = 'd:\.ruby\.sdk') {
    Env-TrySetVariable -Variable 'RUBY_HOME' -Value $RubyPath
    Env-TryAppendPathVariable -Value "$RubyPath\bin"
}