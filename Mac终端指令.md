##### .bash_profile
```
#Flutter 镜像配置
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

#Flutter 配置
export FLUTTER=/opt/flutter/bin

#Android 配置
export ANDROID_HOME=/Users/lichengdong/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
```
##### .zshrc
```
#Flutter 镜像配置
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

#Flutter 配置
export FLUTTER=/opt/flutter/bin
export PATH=$FLUTTER:$PATH

#Android 配置
export ANDROID_HOME=/Users/lichengdong/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

```
##### 终端指令
```
echo $SHELL//打印当前shell
zsh: /bin/zsh
bash: /bin/bash

chsh -s /bin/bash //切换到bash
chsh -s /bin/zsh //切换到zsh

vim or open ~/.zshrc    //默认
vim or open ~/.bash_profile

brew uninstall zsh//brew卸载oh-my-zsh

defaults write com.apple.finder AppleShowAllFiles FALSE 隐藏隐藏文件
defaults write com.apple.finder AppleShowAllFiles TRUE 显示隐藏文件
killall Finder
```

[iTerm2+Oh-My-Zsh 教你如何在MAC上打造自己的终端](https://www.cnblogs.com/teressaMei/articles/16014422.html#5%E5%AE%89%E8%A3%85powerfonts%E5%AD%97%E4%BD%93%E5%BA%93)
```
大概分为一下几个步骤
安装oh my zsh
安装iTerm2
安装Powerline
安装PowerFonts字体库
安装powerlevel9k主题
配置.zshrc文件
```
[如何在 Mac 上安装 PIP](https://www.yundongfang.com/Yun164937.html)
##### 全局脚本

```
1.打开终端执行：在/usr/local/bin/下创建xxx的文件
sudo vim /usr/local/bin/xxx
2.编辑脚本
#!/bin/bash
echo "开始的我的自定义的sh"
3.执行sudo chmod +x /usr/local/bin/xxx
4.全局使用xxx + Enter
```
Git指令

```
1> 首先在GitHub上点击New repository新建一个仓库Text。
2> 克隆项目到本地，看终端当时所在目录
git clone https://github.com/LiChengDong1020/Git_Usage.git
3> cd 到对应文件夹
4> git add . 提交所有修改的和新增的文件到暂存区
   git add "xxx 添加指定文件
5> git commit -m "xxx" 把文件提交到本地仓库
6> git push 推送代码到GitHub

UserName LiChengDong1020
Password  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

git status 查看是否还有未提交的文件（红色是工作区文件，绿色是提交到了暂存区）
git log 查看历史操作日志（详细显示）
```

##### push pull
```
git push origin master 将文件给推到服务器上
git push origin master:develop
git push origin master:hb-dev 将本地库与服务器上的库进行关联
git push (远程仓库名) (分支名) 将本地分支推送到服务器上去。
git push origin serverfix:awesomebranch
git push origin master 将本地项目给提交到服务器中
git pull 本地与服务器端同步
```

##### branch
```
git branch 查看本地所有分支
git branch -a 查看所有的分支
git branch -r 查看本地所有分支
git branch -D master develop 删除本地库develop
git merge origin/dev 将分支dev与当前分支进行合并
git checkout --track origin/dev 切换到远程dev分支
git checkout -b dev 建立一个新的本地分支dev
git checkout dev 切换到本地dev分支

```

##### remote
```
git remote add origin git@192.168.1.119:ndshow
git remote show origin 显示远程库origin里的资源
git remote show 查看远程库
git remote add origin git@github.com:username/Hello-World.git
```
##### other
```
git commit -a 提交当前repos的所有的改变
git commit -v 当你用－v参数的时候可以看commit的差异
git commit -m "This is the message describing the commit" 添加commit信息
git commit -a -a是代表add，把所有的change加到git index里然后再commit
git commit -a -v 一般提交命令

git diff 查看尚未暂存的更新
git diff --cached 或 $ git diff --staged 查看尚未提交的更新

git stash push 将文件给push到一个临时空间中
git stash pop 将文件从临时空间pop下来
```

