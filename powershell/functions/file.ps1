################################
# powershell file functions
################################

function File-GetBigFiles ([int]$top = 20) {
    Get-ChildItem -Path $(Get-Location) -File -Recurse |
        Sort-Object Length -Descending |
        Select-Object -First $top |
        Format-Table -Property @{Label = "Size"; Expression = {($_.Length / 1MB).ToString(('0.000')) + 'MB'} }, FullName -Wrap
}
