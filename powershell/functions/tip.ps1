################################
# powershell help functions
################################

function tip ([string] $name) {
    Get-Command -Name $name -CommandType AlL
}
