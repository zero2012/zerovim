zerovim
=======
- 很多刚接触MacBook,或者OS X系统的朋友都不知道如何安装,配置vim.
- 整理了一下自己使用vim习惯,让我们来见证一下vim这款神器如何在MacBook下飞起来吧.

### 运行截图

 ![image](https://github.com/zero2012/pics/blob/master/zerovim/pic_1.png)

#一:安装Macvim

- 1. 点击下载 https://codeload.github.com/zero2012/zerovim/zip/master 或 clone zerovim程序：cd ~/Downloads && git clone git://github.com/zero2012/zerovim.git 
- 2. 解压目录后有OS X的目录，里面有Macvim,gvim两个程序,Macvim是OS X系统gui、gvim是终端下面启动Macvim的命令脚本
- 3. 把Macvim复制到Applications
- 4. 开启终端,进入Downloads目录
- 5. cd ~/Downloads/zerovim-master
- 6. cp  OS\ X/gvim  /usr/bin/

#二:运行install.sh脚本配置Macvim

- 先安装一下ctags git 等工具
- sudo port install ctags git 或 brew install vim ctags git
- chomd +x install.sh
- ./install.sh
- 打开vim并执行bundle程序`:BundleInstall`
- 重新打开vim即可看到效果

### 了解更多vim使用的小技巧：

[tips.md](tips.md)

