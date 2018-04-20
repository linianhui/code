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
