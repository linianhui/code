# Github仓库的根目录
$GitHubReposPath = 'd:\.github\'

# 我的仓库的
$LnhGitHubReposPath = $GitHubReposPath + '.lnh\'

$LnhGitHubReposPathAlias = @{
    ae  = $LnhGitHubReposPath + 'aspnetcore.example';
    ce  = $LnhGitHubReposPath + 'cake.example';
    c9d = $LnhGitHubReposPath + 'channel9.downloader';
    ces = $LnhGitHubReposPath + 'chrome.extensions';
    ct  = $LnhGitHubReposPath + 'cnblogs.theme';
    c   = $LnhGitHubReposPath + 'code';
    cg  = $LnhGitHubReposPath + 'code.guide';
    d   = $LnhGitHubReposPath + 'dockerfiles';
    gt  = $LnhGitHubReposPath + 'git.test';
    ns  = $LnhGitHubReposPath + 'nuget.server';
    oe  = $LnhGitHubReposPath + 'oidc.example';
}

function cdg () {
    Write-Host "cd $GitHubReposPath" -ForegroundColor Green
    Set-Location $GitHubReposPath
}

function cdi ([string] $Alias) {
    $TargetPath = $LnhGitHubReposPath
    
    if ($Alias) {
        $TargetPath= $LnhGitHubReposPathAlias[$Alias]
    }

    Write-Host "cd $TargetPath" -ForegroundColor Green
    Set-Location $TargetPath
}
