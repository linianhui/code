# Commands, Parameters/Arguments, Options

```sh
# show the current shell.
echo $SHELL

# displays all installed shell.
cat -n /etc/shells
```

1. command : `cat`
2. option : `-n`
3. parameters/arguments : `/etc/shells`

# Special Characters

| Character      | Meaning                        |
| -------------- | ------------------------------ |
| `#`            | Comment                        |
| <code>`</code> | Command substitution (archaic) |
| `$`            | Variable expression            |
| `(`            | Start subshell                 |
| `)`            | End subshell                   |
| `\`            | Quote next character           |
| `&`            | Background job                 |
| `{`            | Start command block            |
| `}`            | End command block              |
| `;`            | Shell command separator        |
| `‘`            | Strong quote                   |
| `"`            | Weak quote                     |
| `!`            | Pipeline logical NOT           |

## Wildcard Character
| Character | Meaning                      |
| --------- | ---------------------------- |
| `*`       | String wildcard              |
| `?`       | Single-character wildcard    |
| `[`       | Start character-set wildcard |
| `]`       | End character-set wildcard   |

## Path Character
| Character | Meaning                      |
| --------- | ---------------------------- |
| `/`       | Root directory               |
| `/`       | Pathname directory separator |
| `~`       | Home directory               |

## I/O Character
| Character | Meaning                          |
| --------- | -------------------------------- |
| `\|`      | Pipe                             |
| `<`       | Input redirect                   |
| `>`       | Output redirect                  |
| `>>`      | Append redirect (if file exists) |
| `2>`      | Error output redirect            |
| `2>&1`    | Send error to output redirect    |
