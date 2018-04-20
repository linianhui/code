################################
# powershell env functions
################################

# https://rubyinstaller.org/downloads/
function Env-SetRubyEnvironmentVariable([string]$RubyPath = 'd:\.ruby\.sdk') {
    Env-TrySetVariable -Variable 'RUBY_HOME' -Value $RubyPath
    Env-TryAppendPathVariable -Value "$RubyPath\bin"
}