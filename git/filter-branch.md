# 删除Git的Commit历史中大文件

**以下操作会有致命性的破坏作用，请先知晓其带来的影响（重写Commit历史），并于与团队成员达成一致！！！**

**以下操作会有致命性的破坏作用，请先知晓其带来的影响（重写Commit历史），并于与团队成员达成一致！！！**

**以下操作会有致命性的破坏作用，请先知晓其带来的影响（重写Commit历史），并于与团队成员达成一致！！！**

## 备份最新的远程仓库，非常重要！！！

**以免后续操作过程中出错，请先备份！！！**

**以免后续操作过程中出错，请先备份！！！**

**以免后续操作过程中出错，请先备份！！！**

```sh
git clone --mirror {repository_url} xxx-back
```

## 查找大文件

从大到小列出仓库中的前`20`个文件：
```sh
git rev-list --objects --all \
| git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' \
| awk '/^blob/ {print substr($0,6)}' \
| sort --numeric-sort --key=2 -r \
| cut --complement --characters=13-40 \
| numfmt --field=2 --to=iec-i --suffix=B --padding=7 --round=nearest \
| sed -n '1,20p'
```

## 删除大文件步骤

```sh
# 1. 克隆最新的仓库
git clone {repository_url} xxx

# 2. 获取所有的分支数据
git fetch --all

# 3. 运行删除文件命令，并重写后续所有的commit；
#    删除空的commit（--prune-empty）；
#    更新所有的tag的引用（--tag-name-filter cat）；
#    应用所有的分支（-- --all）；
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch -r 'big-file-full-path.file'" --prune-empty --tag-name-filter cat -- --all

# 4. 删除备份的引用（Widows上使用Git Bash操作，PowerShell无法运行）
git for-each-ref --format='delete %(refname)' refs/original | git update-ref --stdin

# 5. 删除所有reflog引用
git reflog expire --expire=now --all

# 6. 执行GC（重新打包并删除无用的对象）
git gc --prune=now --aggressive

# 7. 强制覆盖远程仓库
git push --force --all

# 8. 强制更新所有的tags
git push --force --tags
```
# 参考
https://git-scm.com/docs/git-filter-branch

https://help.github.com/articles/removing-sensitive-data-from-a-repository/
