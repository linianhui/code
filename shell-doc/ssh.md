# `ssh`

```sh
ssh lnh@ubts -p 22
```

# `ssh-keygen`

```sh
# Create RSA private(`id_rsa`) and public(`id_rsa.pub`) key pair.
ssh-keygen -t rsa
```


# `scp`

```sh
# Copy file.
scp 1.txt lnh@ubts:/home/lnh/1.txt
```

# `ssh-copy-id`

```sh
# Copy `id_rsa.pub` to `~/.ssh/authorized_keys`.
ssh-copy-id -i id_rsa.pub lnh@ubts
```


# `sshd_config`

` /etc/ssh/sshd_config`

```ini
RSAAuthentication     yes
PubkeyAuthentication  yes
AuthorizedKeysFile    .ssh/authorized_keys
```