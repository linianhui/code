# 代码的根目录
$CODE_PATH = 'd:\.code\';
# 我的代码的根目录
$MY_CODE_PATH = $CODE_PATH + '.lnh\';

$CODE_PATH_ALIAS = @{
    g   = $CODE_PATH;
    ps  = 'd:\.powershell\';
    ae  = $MY_CODE_PATH + 'aspnetcore.example';
    ce  = $MY_CODE_PATH + 'cake.example';
    c9d = $MY_CODE_PATH + 'channel9.downloader';
    ces = $MY_CODE_PATH + 'chrome.extensions';
    ct  = $MY_CODE_PATH + 'cnblogs.theme';
    c   = $MY_CODE_PATH + 'code';
    cg  = $MY_CODE_PATH + 'code.guide';
    d   = $MY_CODE_PATH + 'docker';
    ns  = $MY_CODE_PATH + 'nuget.server';
    oe  = $MY_CODE_PATH + 'oidc.example';
    gw  = $MY_CODE_PATH + 'git.web';
    n   = $MY_CODE_PATH + 'networking';
    hb  = $MY_CODE_PATH + 'http.benchmark';
}

function Code-ChangeDirectory ([string] $Alias) {
    $TargetPath = $MY_CODE_PATH
    
    if ($Alias) {
        $TargetPath= $CODE_PATH_ALIAS[$Alias]
    }

    Log-Debug "cd $TargetPath"
    Set-Location $TargetPath
}

function Code-UseVsCodeOpenDirectory ([string] $Alias) {
    $TargetPath = $MY_CODE_PATH
    
    if ($Alias) {
        $TargetPath= $CODE_PATH_ALIAS[$Alias]
    }

    Log-Debug "code $TargetPath"
    code $TargetPath
}
