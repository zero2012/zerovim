##自定义快捷键

大部分自定义快捷键都在 <code>config/keyboard.vim</code> 中配置，<code>&lt;Leader&gt;</code> 键被映射为逗号 <code>,</code>

* ###Normal 模式

    - <code>&lt;F2&gt;</code>:   打开 NERDTree目录树开关切换
    - <code>&lt;F3&gt;</code>:   tagbar函数列表开关切换
    - <code>&lt;F4&gt;</code>:   新标签打开一个文件，复制目录树
    - <code>&lt;F5&gt;</code>:   C，C++,java,golang,python编译运行
    - <code>&lt;F6&gt;</code>:   清除高亮并且重绘屏幕
    - <code>&lt;F8&gt;</code>:    C,C++的调试
    - <code>&lt;C-P&gt;</code>:  函数注释
    - <code>&lt;C-\&gt;</code>:  代码注释
    - <code>&lt;C-m&gt;</code>:  去掉windows下编辑器产生的 ^M
    - <code>&lt;Leader&gt;&lt;Leader&gt;m</code>:   MRU,最近打开的文件

* svn插件操作
    - <code>&lt;Leader&gt;sd</code>:   比较文件
    - <code>&lt;Leader&gt;su</code>:   更新文件
    - <code>&lt;Leader&gt;sc</code>:   提交文件
    - <code>&lt;Leader&gt;sa</code>:   新增文件
    - <code>&lt;Leader&gt;si</code>:   显示文件的svn详细信息
    - <code>&lt;Leader&gt;sl</code>:   显示文件的svn日志
   
* grep 搜索插件
    - <code>&lt;Leader&gt;vb</code>:   根据光标的词在当前文件全局搜索
    - <code>&lt;Leader&gt;vv</code>:   根据光标的词在当前目录对所有文件全局搜索
    - <code>&lt;Leader&gt;vV</code>:   根据光标的单词在当前目录对所有文件全局搜索
    - <code>&lt;Leader&gt;r</code>:    根据光标的单词在当前文件进行替换

* 格式化代码
    - <code>&lt;Leader&gt;fh</code>:   格式化html代码
    - <code>&lt;Leader&gt;fj</code>:   格式化js代码
    - <code>&lt;Leader&gt;fc</code>:   格式化css代码

* 窗体移动
    - <code>&lt;C-h&gt;</code>:   向左窗体移动
    - <code>&lt;C-j&gt;</code>:   向上窗体移动
    - <code>&lt;C-k&gt;</code>:   向下窗体移动
    - <code>&lt;C-l&gt;</code>:   向右窗体移动

* CommandLine 模式
    - <code>:Tabularize /= </code>   在当前所选择的行查找＝(等号)对齐


## 插件

### 插件列表

插件详细介绍请 Google

* L9 library库  : 很多补全插件都依懒它
* nerdtree      : 左边树tree
* indentLine    : 代码缩进对齐线
* mru           : 记录最近打开的文件
* snipMate      : 快捷补全
* Pydiction     : python语言补全
* php-doc       : 注释工具
* tagbar        : 右边树,显示函数列表等
* nerdcommenter : tree家族出的多行注释
* OmniCppComplete : 一款很牛逼的补全工具
* neocomplcache : 弹框插件
* tabular : 文本对齐插件,你可以根据自己的喜欢来设置根据什么对齐比如=号
* javacomplete  : java补全
* emmet-vim     : 替换zen coding的神器,写html超快
* syntastic     : 语法检查工具
* vim-gocode    : go语言语法高亮
* DrawIt.vim    : ASCII art 风格的注释
* EasyGrep      : 取代grep的搜索神器
* vcscommand    : svn插件
* txt           : txt文本高亮
