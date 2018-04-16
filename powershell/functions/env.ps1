################################
# powershell env functions
################################

function Env-SetVariable ([string]$Variable = $(throw "Variable is null!"),
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

function Env-TryAppendPathVariable ([string]$Value = $(throw "Value is null!")) {
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

    Env-SetVariable -Variable $Variable -Value $NewValue
}

function Env-SetPuttyEnvironmentVariable([string]$PuttyPath = 'd:\.app\putty') {
    Env-TryAppendPathVariable -Value $PuttyPath
}

function Env-SetILSpyEnvironmentVariable([string]$ILSpyPath = 'd:\.app\ilspy') {
    Env-TryAppendPathVariable -Value $ILSpyPath
}

function Env-SetJavaEnvironmentVariable([string]$JavaPath = 'C:\program files\java\jdk1.8.0_162') {
    Env-SetVariable -Variable 'JAVA_HOME' -Value $JavaPath
    Env-SetVariable -Variable 'CLASSPATH' -Value ".;$JavaPath\lib;$JavaPath\lib\tools.jar"
    Env-TryAppendPathVariable -Value "$JavaPath\bin"
}

function Env-SetMavenEnvironmentVariable([string]$MavenPath = 'd:\.java\.maven') {
    Env-SetVariable -Variable 'MAVEN_HOME' -Value $MavenPath
    Env-TryAppendPathVariable -Value "$MavenPath\bin"
}

function Env-SetGradleEnvironmentVariable([string]$GradlePath = 'd:\.java\.gradle',
    [string]$GradleLocalRepositoryPath = 'd:\.java\.gradle-local-repository'
) {
    Env-SetVariable -Variable 'GRADLE_HOME' -Value $GradlePath
    Env-SetVariable -Variable 'GRADLE_USER_HOME' -Value $GradleLocalRepositoryPath
    Env-TryAppendPathVariable -Value "$GradlePath\bin"
}

function Env-SetSpringBootCliEnvironmentVariable([string]$SpringBootCliPath = 'd:\.java\.spring-boot-cli') {
    Env-TryAppendPathVariable -Value "$SpringBootCliPath\bin"
}

function Env-SetGoEnvironmentVariable([string]$GoRoot = 'd:\.go\.sdk') {
    Env-SetVariable -Variable 'GOROOT' -Value $GoRoot
    Env-TryAppendPathVariable -Value "$GoRoot\bin"
}
