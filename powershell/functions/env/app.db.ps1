################################
# powershell env functions
################################


# https://github.com/MicrosoftArchive/redis/releases
function Env-SetRedisEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.db\.redis\'
}

# https://www.mongodb.org/dl/win32/x86_64-2008plus-ssl
function Env-SetMongoDBEnvironmentVariable() {
    Env-TryAppendPathVariable -Value 'd:\.app\.db\.mongodb\'
}
