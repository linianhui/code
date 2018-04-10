# Github仓库的根目录
$GitHubReposPath = 'd:\.github\'

# 我的仓库的根目录
$iGitHubReposPath = $GitHubReposPath + '.lnh\'

$GitHubReposPathAlias = @{
    i    = $iGitHubReposPath;
    iae  = $iGitHubReposPath + 'aspnetcore.example';
    ice  = $iGitHubReposPath + 'cake.example';
    ic9d = $iGitHubReposPath + 'channel9.downloader';
    ices = $iGitHubReposPath + 'chrome.extensions';
    ict  = $iGitHubReposPath + 'cnblogs.theme';
    ic   = $iGitHubReposPath + 'code';
    icg  = $iGitHubReposPath + 'code.guide';
    id   = $iGitHubReposPath + 'dockerfiles';
    igt  = $iGitHubReposPath + 'git.test';
    ins  = $iGitHubReposPath + 'nuget.server';
    ioe  = $iGitHubReposPath + 'oidc.example';
}

function cdg ([string] $Path) {
    $TargetPath = $GitHubReposPath
    
    if ($Path) {
        $TargetPath= $GitHubReposPathAlias[$Path]
    }

    Write-Host "cd $TargetPath" -ForegroundColor Green
    Set-Location $TargetPath
}
