################################
# git find big file functions
################################

function script:Git-GetAllObjects () {
    $gitObjects = git rev-list --objects --all | git cat-file --batch-check='%(objecttype)|%(objectname)|%(objectsize)|%(rest)'
    return $gitObjects
}

function script:Git-ConvertToPSObject ($object) {
    $row = $object.Split('|')

    $gitObject = New-Object PSObject -Property @{
        type = $row[0];
        sha  = $row[1];
        size = [int]($row[2]);
        path = $row[3];
    }
  
    return $gitObject
}

function script:Git-GetAllBlobObjects () {
    $gitBlobObjects = @()
    Git-GetAllObjects | Foreach-Object {
        if ($_.StartsWith('blob')) {
            $gitBlobObjects += (Git-ConvertToPSObject $_)
        }
    }
    return $gitBlobObjects
}


function Git-GetBigFiles([int]$top = 20) {
    $begin = Get-Date
    Write-Host "begin..." $begin -ForegroundColor Green

    Git-GetAllBlobObjects | 
        Sort-Object size -Descending | 
        Select-Object -First $top | 
        Format-Table -Property sha, @{Label = "size"; Expression = {($_.size / 1MB).ToString(('0.000')) + 'MB'} }, path -Wrap

    $end = Get-Date
    Write-Host "end..." $end -ForegroundColor Green
    Write-Host "elapsed times" ($end - $begin) -ForegroundColor Green
}
