# Install

1. windows-gnu: <https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-gnu/rustup-init.exe>
2. windows-msnv: <https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe>
3. apple-darwin: <https://static.rust-lang.org/rustup/dist/x86_64-apple-darwin/rustup-init>

```powershell
# windows only
Env-SetRustEnvironmentVariable

rustup-init.exe -y --verbose --default-toolchain stable --profile complete --no-modify-path
```