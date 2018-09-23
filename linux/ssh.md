# Login

```sh
ssh lnh@ubts -p 22
```

# Public Key Login

```sh
# 1. Create RSA private(`id_rsa`) and public(`id_rsa.pub`) key pair.
ssh-keygen -t rsa

# 2. Append to remote server.
scp -P 22 id_rsa.pub lnh@ubts:/home/lnh/id_rsa.pub

# 3. Login remote server, and append `id_rsa.pub` to `~/.ssh/authorized_keys`.
cat id_rsa.pub >> ./.ssh/authorized_keys
```

# SSH Config

` /etc/ssh/sshd_config`

```ini
RSAAuthentication yes
PubkeyAuthentication yes
AuthorizedKeysFile      .ssh/authorized_keys
```