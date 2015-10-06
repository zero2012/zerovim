" 指定插件vundle安装目录, vundle会指定其他插件安装目录
set rtp+=~/.vim/bundle/vundle/
" 调用管理器
call vundle#rc()

" 插件管理器
"Bundle 'zero2012/vundle'
" 自动补全的一款工具
Bundle 'vim-scripts/L9'
"左边树tree 
Bundle 'scrooloose/nerdtree'
"对齐线
Bundle 'vim-scripts/indentLine.vim'
"打开历史目录 => ,,m 
Bundle 'vim-scripts/mru.vim'
"dict的补全 
Bundle 'vim-scripts/Pydiction'
"右边树,比taglisg更强大，可按函数分类
Bundle 'vim-scripts/Tagbar'
" 自动提示需要这2个插件, 并不用配置
" tree家族出的多行注释
Bundle 'scrooloose/nerdcommenter'
" c++的补全
Bundle 'vim-scripts/OmniCppComplete'
" 文本对齐插件，你可以根据自己的喜欢来设置根据什么对齐比如=号
Bundle 'vim-scripts/Tabular'
" java提示, 
Bundle 'vim-scripts/javacomplete'
" html，xml等页面批量生成table等  
Bundle 'mattn/emmet-vim'
" 保存时语法检查, 不用配置
Bundle 'vim-scripts/Syntastic'
"txt文件高亮
Bundle 'vim-scripts/txt.vim'
" 由于新版neocomplcache 不支持sudo gvim file,所以用老版neocomplcache并放在自己的github
"Bundle 'zero2012/neocomplcache'
"go语言语法高亮
Bundle 'zero2012/vim-gocode'
"ASCII art 风格的注释
Bundle 'zero2012/DrawIt.vim'
"取代grep的搜索插件
Bundle 'zero2012/EasyGrep'
"svn插件
Bundle 'zero2012/vcscommand.vim'
"快捷补全
Bundle 'zero2012/snipMate'
"注释工具
Bundle 'zero2012/php-doc.vim' 
"代码美化
Bundle 'zero2012/codebeautify'
"文件搜索插件
Bundle 'kien/ctrlp.vim'
"自动更新文件修改时间
"Bundle 'vim-scripts/timestamp.vim'
"vim-swift
Bundle 'toyamarinyon/vim-swift'

"大文件读取优化插件 https://github.com/vim-scripts/LargeFile
Bundle 'vim-scripts/LargeFile'
"Ycm
Bundle 'Valloric/YouCompleteMe'

