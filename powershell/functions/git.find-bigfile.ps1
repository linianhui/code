################################
# git find big file functions
################################

function script:Git-GetAllObjects () {
    $gitObjects = git rev-list --objects --all | git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)'
    return $gitObjects
}

function script:Git-ConvertToPSObject ($object) {
    $row = $object.Split(' ')

    $size_int = [int]($row[2])
    $size = ($size_int / 1MB).ToString('0.000') + 'MB'

    $pathIndex = ($row[0] + $row[1] + $row[2]).Length + 3;
    $path = $object.SubString($pathIndex, $object.Length - $pathIndex);

    $gitObject = New-Object PSObject -Property @{
        type     = $row[0];
        sha      = $row[1];
        size_int = $size_int;
        size     = $size;
        path     = $path;
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


function Git-FindBigFile([int]$top = 20) {
    Write-Host "find..." -ForegroundColor Green
    Git-GetAllBlobObjects | Sort-Object size_int -Descending | Select-Object -First $top | Format-Table -Property sha, size, path -Wrap
}