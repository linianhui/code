# 删除大文件，重写commit历史

```shell
# 1. 克隆最新的远程仓库
git clone {repository_url}

# 2. 获取所有的分支数据
git fetch --all

# 3. 运行删除文件命令，并重写后续所有的commit；
#    删除空的commit（--prune-empty）；
#    更新所有的tag的引用（--tag-name-filter cat）；
#    应用所有的分支（-- --all）；
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch -r 'big-file-full-path.file'" --prune-empty --tag-name-filter cat -- --all

# 4. 删除备份的引用
git for-each-ref --format='delete %(refname)' refs/original | git update-ref --stdin

# 5. 删除所有reflog引用
git reflog expire --expire=now --all

# 6. 执行GC（重新打包并删除无用的对象）
git gc --prune=now

# 7. 强制覆盖远程仓库
git push --force --all

# 8. 强制更新所有的tags
git push --force --tags
```
# 参考
https://git-scm.com/docs/git-filter-branch

https://help.github.com/articles/removing-sensitive-data-from-a-repository/
