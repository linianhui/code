# Tilde Expansion `~`

`~` : `/home` or `/users` or `/Users`.
```sh
# user 'lnh'.
# /home/lnh/.bash_profile or /users/lnh/.bash_profile
echo ~lnh/.bash_profile

# current user home directory
echo ~
```

# Brace Expansion `{}`

```sh
# a b c
echo {a..c}

# 01 02 03 04 05 06 07 08 09 10
echo {01..10}

# 1 3 5
echo {1..5..2}

# file1.txt file2.txt file3.txt file4.txt
echo file{1..4}.txt
```