# Github仓库的根目录
$GitHubReposPath = 'd:\.github\'

# 我的仓库的根目录
$LnhGitHubReposPath = $GitHubReposPath + '.lnh\'

$LnhGitHubReposPathAlias = @{
    g   = $GitHubReposPath;
    ae  = $LnhGitHubReposPath + 'aspnetcore.example';
    ce  = $LnhGitHubReposPath + 'cake.example';
    c9d = $LnhGitHubReposPath + 'channel9.downloader';
    ces = $LnhGitHubReposPath + 'chrome.extensions';
    ct  = $LnhGitHubReposPath + 'cnblogs.theme';
    c   = $LnhGitHubReposPath + 'code';
    cg  = $LnhGitHubReposPath + 'code.guide';
    d   = $LnhGitHubReposPath + 'dockerfiles';
    ns  = $LnhGitHubReposPath + 'nuget.server';
    oe  = $LnhGitHubReposPath + 'oidc.example';
    gw  = $LnhGitHubReposPath + 'git.web';
}

function c ([string] $Alias) {
    $TargetPath = $LnhGitHubReposPath
    
    if ($Alias) {
        $TargetPath= $LnhGitHubReposPathAlias[$Alias]
    }

    Write-Host "cd $TargetPath" -ForegroundColor Green
    Set-Location $TargetPath
}

function cc ([string] $Alias) {
    $TargetPath = $LnhGitHubReposPath
    
    if ($Alias) {
        $TargetPath= $LnhGitHubReposPathAlias[$Alias]
    }

    Write-Host "code $TargetPath" -ForegroundColor Green
    code $TargetPath
}
