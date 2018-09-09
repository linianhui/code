# Login

```sh
ssh lnh@ubts -p 22
```

# Config Public Key Login

```sh
# 1. Create RSA private(`id_rsa`) and public(`id_rsa.pub`) key pair.
ssh-keygen -t rsa

# 2. Append to remote server.
scp -P 22 ~/.ssh/id_rsa.pub lnh@ubts:/home/lnh/lnh_id_rsa.pub

# 3. Login remote server, and append `lnh_id_rsa.pub` to `~/.ssh/authorized_keys`.
cat lnh_id_rsa.pub >> ./.ssh/authorized_keys
```
