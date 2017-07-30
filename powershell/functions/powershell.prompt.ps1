################################
# powershell prompt functions
################################

function prompt () {
    # hold last exit code
    $originalLastExitCode = $LASTEXITCODE

    # show git user.name and user.email 
    if (Get-GitStatus) {
        Write-Host -NoNewline "`n> $(Get-GitUser) :" -ForegroundColor Gray
    }
     
    # show git status
    Write-VcsStatus

    # show current work directory in window title
    $Host.UI.RawUI.WindowTitle = "$(Get-DisplayUserName) $(Get-Location)"

    # reset last exit code
    $LASTEXITCODE = $originalLastExitCode

    "`n$('>' * ($NestedPromptLevel + 1)) "
}
