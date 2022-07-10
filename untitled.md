Git 命令汇总

___

##         1.1 Git 的几个区

##         1.2 如何标识 Git 的某次提交

##         2.1 配置

##         2.2 读取配置

##         2.3 与 Beyond Compare 集成

##         2.4 一些常用的配置项

##         2.5 Alias 配置

##         7.1 查看修改日志

##         7.2 信息统计

##         7.3 操作日志

##         8.1 信息查看

##         8.2 工作区与暂存区(Index)互操作

##         8.3 提交代码

##         8.4 Stash 管理

##         8.5 比较

##         8.6 合并代码

##         8.7 恢复代码

##         9.1 Rollback commit

##         9.2 批量处理冲突

##         9.3 更新一个 project 下的所有 repositories

##         9.4 误 commit 大文件

##         10.1 fatal: Unable to create '\*\*\*/.git/index.lock': File exists.

___

## 1.1 Git 的几个区

-   worktree: 工作区
-   index/stage: 暂存区
-   commit: 本地 repository
-   stash: 备份区

## 1.2 如何标识 Git 的某次提交

-   用 SHA 码标识
-   HEAD，表示当前 repository 的最后一次提交
-   HEAD^，表示当前 repository 的前一次提交，加两个 ^ 就表示前两次提交
-   HEAD~4，表示当前 repository 的前4次提交

## 2.1 配置



## 2.2 读取配置

可在 C:\\Users\\用户名\\.gitconfig 文件中看到所有的酌置项。

或者使用命令行查看，与设置相似，不加最后的参数就行了

## 2.3 与 Beyond Compare 集成

对于 3.0.13 版本，其 .gitconfig 如下所示

\[diff\]
external \= \\"C:\\\\Program Files (x86)\\\\Beyond Compare 3\\\\BCompare.exe\\"

对于 3.3.5 版本，.gitconfig 如下所示

\[diff\]
tool = bc3
\[difftool\]
prompt = false
\[difftool "bc3"\]
cmd = \\"c:/Program Files (x86)/beyond compare 3/bcomp.exe\\" "$(cygpath -w $LOCAL)" "$REMOTE"
\[merge\]
tool = bc3
\[mergetool\]
prompt = false
\[mergetool "bc3"\]
cmd = \\"c:/program files/beyond compare 3/bcomp.exe\\" "$LOCAL" "$REMOTE" "$BASE" "$MERGED"

配置完成后，需使用 git difftool 命令代替 git diff, git mergetool 代替 git merge

## 2.4 一些常用的配置项

配置项

说明

core.safecrlf

-   false: 不做任何检查
-   warn: 在提交时检查并警告 (default)
-   true: 在提交时检查，如果发现混用则拒绝提交

## 2.5 Alias 配置

可以简化一些操作

## 7.1 查看修改日志

## 7.2 信息统计

\# 显示所有贡献者及其commit数 git shortlog --numbered --summary

## 7.3 操作日志

## 8.1 信息查看

## 8.2 工作区与暂存区(Index)互操作

## 8.3 提交代码

## 8.4 Stash 管理

## 8.5 比较

### 8.5.1 所有文件比较

### 8.5.2 单个文件比较

## 8.6 合并代码

### 8.6.1 冲突解决

常规情况下，如果是两个人同时修改同一个文件引起的冲突。用文本编辑器查看会看到如下所示的内容

This is the version 1

需要在编辑器中合并完修改后，使用 git add 命令提交。

如果如同前文所示配置了 beyond compare 作为 merge 工具，可以使用命令

git mergetool \[file\_name\]

合并完成后保存即可

使用 beyond compare，会自动在本地生成如下文件：

-   \[file\_name\].orig: 未合并前的原始文件
-   \[file\_name\]\_BACKUP\_\[SHA\]: 未合并前的原始文件再备份, 以防你干蠢事
-   \[file\_name\]\_BASE\_\[SHA\]: 本地代码库中未合并前的版本
-   \[file\_name\]\_LOCAL\_\[SHA\]: 本地工作区中使用 beyond compare 合并完成后保存的版本
-   \[file\_name\]\_REMOTE\_\[SHA\]: 远程版本

也就是说, 合并完成后使用"另存为"功能将 \[file\_name\]\_LOCAL\_\[SHA\] 替换当前文件即可. 默认情况下你看不到上面这些文件, 但如果使用 Ctrl + C 来结束命令的话这些文件将会被保留.

合并完成后可用如下文件快速删除临时文件

git status \-s | grep ?? | cut \-d ' ' \-f 2 | xargs rm

### 8.6.2 快速解决冲突的情况

但有如下的情况，可以使用以下命令快速解决

### 8.6.3 取消合并

有时需要认怂, 放弃本次 merge, 可使用如下命令

git merge \--abort

我们会发现 branch name 从 \[branch\]|MERGING 恢复成了 \[branch\]

## 8.7 恢复代码

## 9.1 Rollback commit

将 repository 回滚到以前的 commit

最后的分支树如下所示

## 9.2 批量处理冲突

有时因为回车换行符产生大量的文件冲突, 可使用如下命令解决

git status \-s | grep UU | cut \-d ' ' \-f 2 | xargs git checkout \--theirs
git status \-s | grep UU | cut \-d ' ' \-f 2 | xargs git add 

## 9.3 更新一个 project 下的所有 repositories

```sh
folders\=$(ls)

for f in ${folders}
do
        if \[ \-d ${f} \]; then
                echo "processing " ${f}
                cd  ${f}
                git pull origin
                cd ..
        fi
done
```
## 9.4 误 commit 大文件
```cmd
git rm \--cached giant\_file
git commit \--amend \-CHEAD
git push origin
```
## 10.1 fatal: Unable to create '\*\*\*/.git/index.lock': File exists.

完整异常信息如下所示

fatal: Unable to create '\*\*\*/.git/index.lock': File exists.

If no other git process is currently running, this probably means a
git process crashed in this repository earlier. Make sure no other git
process is running and remove the file manually to continue.

因为上一次 git 处理异常中断而引起，如果确认上次 git 操作已运行完，可以强制删除该 .lock 文件

rm \-f \*\*\*/.git/index.lock