##自定义快捷键

大部分自定义快捷键都在 <code>config/keyboard.vim</code> 中配置，<code>&lt;Leader&gt;</code> 键被映射为逗号 <code>,</code>

* Normal 模式

- <code>&lt;F2&gt;</code>:   打开 NERDTree目录树开关切换
- <code>&lt;F3&gt;</code>:   tagbar函数列表开关切换
- <code>&lt;F4&gt;</code>:    新标签打开一个文件，复制目录树

<Ctrl>-l: 清除高亮并且重绘屏幕
<Ctrl>-_: 分屏模式下当前窗口最大化

* CommandLine 模式
    <Ctrl>-a: 跳到命令行开始
    <Ctrl>-e: 跳到命令行结束
* Insert 模式
    ii: 退出到 Norm 模式并保存文件
    <Ctrl>-j: 相当于 <Ctrl>-x<Ctrl>-u
    <Command>-r: 仅在 MacVim 下有效，执行 :silent make
