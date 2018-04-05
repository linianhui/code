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
    $size = ($size_int/1MB).ToString('0.000') + 'MB'

    $gitObject = New-Object PSObject -Property @{
        type       = $row[0];
        sha        = $row[1];
        size_int   = $size_int;
        size       = $size;
        path       = $row[3];
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
    Git-GetAllBlobObjects | Sort-Object size_int -Descending | Select-Object -First $top | Format-Table -Property sha,size,path
}