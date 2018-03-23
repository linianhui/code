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

# 4. 本地执行GC，清理并删除所有的悬空引用
git gc --prune=0

# 5. 强制覆盖远程仓库
git push --force --all

# 6. 强制更新所有的tags
git push --force --tags
```
# 参考
https://git-scm.com/docs/git-filter-branch

https://help.github.com/articles/removing-sensitive-data-from-a-repository/
