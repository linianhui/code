# Github仓库的根目录
$GitHubReposPath      = 'd:\.github\'

# 我的仓库的根目录
$MeGitHubReposPath    = $GitHubReposPath + '.lnh\'

$GitHubReposPathAlias = @{
  i    = $MeGitHubReposPath;
  iae  = $MeGitHubReposPath + 'aspnetcore.example';
  ice  = $MeGitHubReposPath + 'cake.example';
  ic9d = $MeGitHubReposPath + 'channel9.downloader';
  ices = $MeGitHubReposPath + 'chrome.extensions';
  ict  = $MeGitHubReposPath + 'cnblogs.theme';
  ic   = $MeGitHubReposPath + 'code';
  icg  = $MeGitHubReposPath + 'code.guide';
  id   = $MeGitHubReposPath + 'dockerfiles';
  igt  = $MeGitHubReposPath + 'git.test';
  ins  = $MeGitHubReposPath + 'nuget.server';
  ioe  = $MeGitHubReposPath + 'oidc.example';
}

function cdg ([string] $path) {
  if ($path) {
    Set-Location $GitHubReposPathAlias[$path]
  }else {
    Set-Location $GitHubReposPath
  }
}
