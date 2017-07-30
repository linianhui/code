################################
# powershell prompt functions
################################

function prompt () {
    # hold last exit code
    $originalLastExitCode = $LASTEXITCODE

    # if working directory is git repository
    if (Get-GitStatus) {

        # show git user.name and user.email 
        Write-Host -NoNewline "`nPS> $(Get-GitUser) :" -ForegroundColor Gray
        
        # show git status
        Write-VcsStatus
    }
     
    # show current work directory in window title
    $Host.UI.RawUI.WindowTitle = "$(Get-DisplayUserName) $(Get-Location)"

    # reset last exit code
    $LASTEXITCODE = $originalLastExitCode

    "`nPS$('>' * ($NestedPromptLevel + 1)) "
}
