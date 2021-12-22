//
//  Git_Usage.m
//  Git_Usage
//
//  Created by 李成东 on 2021/12/22.
//

#import "Git_Usage.h"

@implementation Git_Usage
#pragma mark - **************** 本地库添加、提交 ****************
/**
 本地创建一个Git仓库
 git init->git add . ->git commit  -m ‘注释’
 
 创建版本库
 //提交相关
 git init                              初始化git仓库
 git add .                           把文件添加进去，实际上就是把文件修改从工作区添加到暂存区；
 git add <file>                   把文件添加进去，实际上就是把文件修改从工作区添加到暂存区；
 git commit                       把暂存区的所有内容提交到当前分支
 git commit  -m '注释'       提交代码加注释，将暂缓区的代码提交到master分支
 git reflog                         查看命令历史，以便确定要回到未来的哪个版本。
 //查看日志
 git status                         显示状态：绿的表示在暂缓区，红色表示没有提交
 git log                              看提交记录
 git log --pretty=oneline
 git tag                              查看所有tag
 
 版本回退
 git reset --hard HEAD^
 git reset --hard commit_id
 
 工作区和暂存区
 1.工作区有一个隐藏目录.git，这个不算工作区，而是Git的版本库。
 2 Git的版本库里存了很多东西，其中最重要的就是称为stage暂存区，还有Git为我们自动创建的第一个分支master，以及指向master的一个指针叫HEAD。
 3.git add命令实际上就是把要提交的所有修改放到暂存区（Stage），然后，执行git commit就可以一次性把暂存区（只是暂存区如果没有add，不不可以提交到分支）的所有修改提交到分支。
 eg：第一次修改 -> git add -> 第二次修改 -> git commit
 Git管理的是修改，当你用git add命令后，在工作区的第一次修改被放入暂存区，准备提交，但是，在工作区的第二次修改并没有放入暂存区，所以，git commit只负责把暂存区的修改提交了，也就是第一次的修改被提交了，第二次的修改不会被提交。
 git diff HEAD -- readme.txt命令可以查看工作区和版本库里面最新版本的区别：
 
 撤销修改
 场景1：当你改乱了工作区某个文件的内容，想直接丢弃工作区的修改时，用命令git checkout -- file。
 场景2：当你不但改乱了工作区某个文件的内容，还添加到了暂存区时，想丢弃修改，分两步，第一步用命令git reset HEAD <file>，就回到了场景1，第二步按场景1操作。
 git checkout -- test.txt     就是让file回到最近一次git commit或git add时的状态。
 git checkout main      切换到另一个分支
 
 删除文件
 git rm test.txt
 git commit -m "remove test.txt"                        文件就从版本库中被删除
 git checkout -- test.txt                                       把误删的文件恢复到最新版本;其实是用版本库里的版本替换工作区的版本，无论工作区是修改还是删除，都可以“一键还原”。
 */

#pragma mark - **************** 远程库相关 ****************
/**
 添加远程库
 git remote add origin git@github.com:LiChengDong1020/2022.git  关联远程仓库
 git remote add origin <URL>       关联远程仓库

 git push -u origin master            第一次推送master分支的所有内容；本地的master分支和远程的master分支关联
 git push origin master                 此后就可以把本地master分支的最新修改推送至GitHub
 git push                                       把本地库的内容推送到远程，用git push命令，实际上是把当前分支master推送到远程。
 git push origin master
 
 git remote -v                                 查看远程库信息：
 git remote rm origin                      根据名字删除远程库，比如删除origin：
 
 从远程库克隆
 git clone git@github.com:LiChengDong1020/2021-1101Note.git
 Git支持多种协议，包括https，但ssh协议速度最快。默认的git://使用ssh，但也可以使用https等其他协议。
 */

#pragma mark - **************** 标签 ****************

/**
 标签管理
 
 //创建标签
 在Git中打标签非常简单，首先，切换到需要打标签的分支上。
 git branch                                                 //dev, master
 git checkout master                                    //切换到master分支
 git tag <tagname>                                     //用于新建一个标签，默认为HEAD，也可以指定一个commit id
 git tag                                                                  //查看所有标签：
 git log --pretty=oneline --abbrev-commit               //查看所有标签
 git log --pretty=oneline                                           //查看所有标签
 git show <tagname>                                                 //查看到说明文字
 git tag <tagname>  commit_id //将某次commit打成tag
 git tag -a v0.1 -m "version 0.1 released" 1094adb                  //创建带有说明的标签
 
 标签总是和某个commit挂钩。如果这个commit既出现在master分支，又出现在dev分支，那么在这两个分支上都可以看到这个标签。
 
 //操作标签
 git tag -d v0.1 // 删标签
 git push origin :refs/tags/0.0.1           //如果标签已经推送到远程，要删除先从本地删除
 git push origin v1.0 //推送某个标签到远程
 git push origin --tags //一次性推送全部尚未推送到远程的本地标签
 
 */
#pragma mark - **************** 分支管理 ****************
/**
 
 创建与合并分支
 git branch                                                                                     查看分支
 git branch dev                                                                             创建dev分支
 git checkout dev   /   git switch dev                                                   切换到dev分支
 git checkout -b dev    /   git switch -c dev                                      创建并切换到dev分支Fast forward方式，
 git merge dev                                                                                      将dev分支合并到当前分支；
 git merge --no-ff -m "注释" dev
 
 解决冲突
 git switch -c feature1                                                                       切换到feature1分支
 git add readme.txt                                                                           修改代码 添加代码
 git commit -m "AND simple"。                                                       提交代码
 git switch master                                                                             切换到master分支
 git merge feature1                                                                           把feature1的代码合并到master分支
 git status                                                                                         查看冲突文件
 git add readme.txt                                                                          修改代码
 git commit -m "conflict fixed"                                                         提交代码
 git branch -d feature1                                                                     删除代码
 
 分支管理策略
 1.默认为Fast forward方式，看不出来曾经做过合并。删除分支后，会丢掉分支信息。
 2.普通方式合并、禁用Fast forward方式，Git就会在merge时生成一个新的commit，这样，从分支历史上就可以看出分支信息。
 3.合并dev分支到当前分支。当Git无法自动合并分支时，就必须首先解决冲突。解决冲突后，再add. /commit。
 
 bug分支
 修复bug时，我们会通过创建新的bug分支进行修复，然后合并，最后删除；
 当手头工作没有完成时，先把工作现场git stash一下，然后开分枝去修复bug，修复后切回分支，再git stash pop，回到工作现场；
 在master分支上修复的bug，想要合并到当前dev分支，可以用git cherry-pick <commit>命令，把bug提交的修改“复制”到当前分支，避免重复劳动。
 
 git branch -d dev                                                                            删除dev分支
 git status                                                                                         查看冲突文件
 git log --graph                                                                                命令可以看到分支合并图。
 git log --graph --pretty=oneline --abbrev-commit
 git stash
 在没有办法添加、提交时（需要git stash命令保存现场，才能从dev分支切换到master分支。），把当前工作现场“储藏”起来，等以后恢复现场后继续工作：
 git stash list                                                 查看stash内容在哪里
 git stash apply                                             恢复stash内容到工作区
 git stash drop                                                 删除stash内容
 git stash pop                                              恢复stash内容的同时把stash内容也删了
 git cherry-pick commit_id                              复制一个特定的提交到当前分支；不需要在dev分支上手动再把在master分支修bug的过程重复一遍
 
 Feature分支
 开发一个新feature，最好新建一个分支；然后需求改了，需要删除分支。
 git branch -D dev                                              如果要丢弃一个没有被合并过dev的分支，可以通过强行删除。
 
 多人协作
 首先，可以试图用git push origin <branch-name>推送自己的修改；
 如果推送失败，则因为远程分支比你的本地更新，需要先用git pull试图合并；
 如果合并有冲突，则解决冲突，并在本地提交，没有冲突或者解决掉冲突后，再用git push origin <branch-name>推送就能成功！
 如果git pull提示no tracking information，则说明本地分支和远程分支的链接关系没有创建，
 用命令git branch --set-upstream-to <branch-name> origin/<branch-name>。

 git remote                                                           远程库的信息
 git remote -v                                                        显示更详细的信息
 origin    https://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@github.com/LiChengDong1020/2021-1101Note.git/ (fetch)//拉取地址
 origin    https://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@github.com/LiChengDong1020/2021-1101Note.git/ (push)//推送地址
 
 
 并不是一定要把本地分支往远程推送，那么，哪些分支需要推送，哪些不需要呢？分支完全可以在本地自己藏着玩，是否推送，视你的心情而定！
 master分支是主分支，因此要时刻与远程同步。
 dev分支是开发分支，团队所有成员都需要在上面工作，所以也需要与远程同步。
 bug分支只用于在本地修复bug，就没必要推到远程了。
 feature分支是否推到远程，取决于你是否和你的小伙伴合作在上面开发。

 git push origin dev                                                把该分支上的所有本地提交推送到远程库，要指定本地分支
 git clone git@github.com:michaelliao/learngit.git
 当你的小伙伴从远程库clone时，默认情况下，你的小伙伴只能看到本地的master分支。不信可以用git branch命令看看：
 git checkout -b branch-name origin/branch-name             在本地创建和远程分支对应的分支
 git push --set-upstream origin main   建立本地分支和远程分支的关联
 git pull                                                   把最新的提交从origin/dev抓下来
 git branch --set-upstream-to=origin/dev dev   设置dev和origin/dev的链接：
 git commit -m "fix env conflict"
 
 git push origin --delete dev   删除远程标签

 */
#pragma mark - **************** 关于Git平时遇到的问题 ****************
/**
 
 如果改了同一个文件，同一个方法，从远程拉不下来，直接保存修改的代码，然后就能拉下来，再恢复

 */
@end
