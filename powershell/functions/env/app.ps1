################################
# powershell env functions
################################

# https://www.putty.org/
function Env-SetPuttyEnvironmentVariable([string]$PuttyPath = 'd:\.app\.putty\') {
    Env-TryAppendPathVariable -Value $PuttyPath
}

# https://github.com/icsharpcode/ILSpy/releases
function Env-SetILSpyEnvironmentVariable([string]$ILSpyPath = 'd:\.app\.ilspy\') {
    Env-TryAppendPathVariable -Value $ILSpyPath
}

# https://www.nuget.org/downloads 
function Env-SetNugetEnvironmentVariable([string]$NugetPath = 'd:\.app\.nuget\') {
    Env-TryAppendPathVariable -Value $NugetPath
}

# https://github.com/MicrosoftArchive/redis/releases
function Env-SetRedisEnvironmentVariable([string]$RedisPath = 'd:\.app\.redis\') {
    Env-TryAppendPathVariable -Value $RedisPath
}

# https://www.mongodb.org/dl/win32/x86_64-2008plus-ssl
function Env-SetMongoDBEnvironmentVariable([string]$MongoDBPath = 'd:\.app\.mongodb\') {
    Env-TryAppendPathVariable -Value $MongoDBPath
}

# https://developer.android.com/studio/releases/platform-tools.html
function Env-SetADBEnvironmentVariable([string]$ADBPath = 'd:\.app\.adb\') {
    Env-TryAppendPathVariable -Value $ADBPath
}

# http://httpd.apache.org/download.cgi
function Env-SetHttpdEnvironmentVariable([string]$HttpdPath = 'd:\.app\.httpd\') {
    Env-TryAppendPathVariable -Value $HttpdPath
}

# http://nginx.org/en/download.html
function Env-SetNginxEnvironmentVariable([string]$NginxPath = 'd:\.app\.nginx\') {
    Env-TryAppendPathVariable -Value $NginxPath
}