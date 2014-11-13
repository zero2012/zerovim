" 指定插件vundle安装目录, vundle会指定其他插件安装目录
set rtp+=~/.vim/bundle/vundle/
" 调用管理器
call vundle#rc()

" 插件管理器
"Bundle 'zero2012/vundle'
" 自动补全的一款工具
Bundle 'zero2012/L9'
"左边树tree 
Bundle 'zero2012/nerdtree.vim'
"对齐线
Bundle 'zero2012/indentLine.vim'
"打开历史目录 => ,,m 
Bundle 'zero2012/mru.vim'
"快捷补全
Bundle 'zero2012/snipMate'
"dict的补全 
Bundle 'zero2012/Pydiction.vim'
"注释工具
Bundle 'zero2012/php-doc.vim' 
"右边树, 显示函数列表等
"Bundle 'zero2012/taglist.vim'
"右边树,比taglisg更强大，可按函数分类
Bundle 'zero2012/tagbar'
" 自动提示需要这2个插件, 并不用配置
" tree家族出的多行注释
Bundle 'zero2012/nerdcommenter'
" c++的补全
Bundle 'zero2012/OmniCppComplete'
" 弹框插件
Bundle 'zero2012/neocomplcache'
" gdb vim调试工具
Bundle 'zero2012/gdb.vim'
" 文本对齐插件，你可以根据自己的喜欢来设置根据什么对齐比如=号
Bundle 'zero2012/tabular'
" java提示, 
Bundle 'zero2012/javacomplete'
" html，xml等页面批量生成table等  
Bundle 'zero2012/emmet-vim'
" 保存时语法检查, 不用配置
Bundle 'zero2012/syntastic'
"go语言语法高亮
Bundle 'zero2012/vim-gocode'
"ASCII art 风格的注释
Bundle 'zero2012/DrawIt.vim'
"取代grep的搜索插件
Bundle 'zero2012/EasyGrep'
"svn插件
Bundle 'zero2012/vcscommand'
"txt文件高亮
Bundle 'zero2012/txt.vim'
Bundle 'zero2012/txt.vim'


