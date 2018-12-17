# Github仓库的根目录
$GITHUB_PATH = 'e:\.github\';
# 我的Github仓库的根目录
$MY_GITHUB_PATH = 'd:\.github\';

$GITHUB_PATH_ALIAS = @{
    g   = $GITHUB_PATH;
    ae  = $MY_GITHUB_PATH + 'aspnetcore.example';
    ce  = $MY_GITHUB_PATH + 'cake.example';
    c9d = $MY_GITHUB_PATH + 'channel9.downloader';
    ces = $MY_GITHUB_PATH + 'chrome.extensions';
    ct  = $MY_GITHUB_PATH + 'cnblogs.theme';
    c   = $MY_GITHUB_PATH + 'code';
    cg  = $MY_GITHUB_PATH + 'code.guide';
    d   = $MY_GITHUB_PATH + 'docker';
    ns  = $MY_GITHUB_PATH + 'nuget.server';
    oe  = $MY_GITHUB_PATH + 'oidc.example';
    gw  = $MY_GITHUB_PATH + 'git.web';
    n   = $MY_GITHUB_PATH + 'network';
}

function c ([string] $Alias) {
    $TargetPath = $MY_GITHUB_PATH
    
    if ($Alias) {
        $TargetPath= $GITHUB_PATH_ALIAS[$Alias]
    }

    Write-Host "cd $TargetPath" -ForegroundColor Green
    Set-Location $TargetPath
}

function cc ([string] $Alias) {
    $TargetPath = $MY_GITHUB_PATH
    
    if ($Alias) {
        $TargetPath= $GITHUB_PATH_ALIAS[$Alias]
    }

    Write-Host "code $TargetPath" -ForegroundColor Green
    code $TargetPath
}
