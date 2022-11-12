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
[如何在 Mac 上安装 PIP](https://www.yundongfang.com/Yun164937.html)

```
大概分为一下几个步骤
安装oh my zsh
安装iTerm2
安装Powerline
安装PowerFonts字体库
安装powerlevel9k主题
配置.zshrc文件
```
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
