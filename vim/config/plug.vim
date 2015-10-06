" 在使用bundle安装插件之前，需要先安装vundle插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
" 生成文件列表 cscope.files
" find dir -name "*.php" -o -name "*.inc" > cscope.files
" 通过 cscope.files 生成函数列表
" cscope -Rbq
" 通过 ctrl+] 跳转到目标函数，通过 ctrl+o 或者 ctrl+t 跳回
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=cscope " /opt/local/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdtree 左侧目录树
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd VimEnter * NERDTree "启动Vim时自动打开nerdtree
let g:NERDTreeWinPos          = "left"
let g:NERDTreeWinSize         = 30
let g:NERDTreeShowLineNumbers = 0
"let g:NERDTreeQuitOnOpen     = 1
let g:NERDTreeMouseMode       = 2  "指定鼠标模式：1为双击打开，3为单击打开，2为目录为单击打开，文件双击打开
let g:NERDChristmasTree       = 1
"let NERDTreeChDirMode        = 2 "打开书签时，自动将Vim的pwd设为打开的目录，如果你的项目有tags文件，你会发现这个命令很有帮助
map <C-\> <plug>NERDCommenterToggle  " 给批量注释设置快捷键

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indentLine 对齐线插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_color_term = 239
let g:indentLine_color_gui  = '#3F4039'
" 如果要保证此插件能够使用必须在vimrc中添加set expandtab
let g:indentLine_char       = '┆'  " 也可以不配置，indentLine.vim插件文件中有默认的

" 3.mru, 打开最近编辑过的文件
" 定义一个用逗号来表示<Learder>
let mapleader = "," 
let maplocalleader = "\\"
let MRU_Window_Height = 10

" 4.snipMate变量定义
let g:my_snips_author = "zero<512888425@qq.com>"
let g:snips_mail      = "512888425@qq.com"
let g:snips_company   = "(C)2012-2022 www.zerophp.cn Inc."
let g:snips_top       = "[zero开发框架]"
let g:my_version      = "1.0"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 判断文件类型
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.{php}   set filetype=php
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => autocmd 自动加载
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 让html和smarty模板能调用字典
au FileType html,htm,smarty setlocal dict+=~/.vim/dict/css.dict
au FileType html,htm,smarty setlocal dict+=~/.vim/dict/javascript.dict
au FileType javascript      setlocal dict+=~/.vim/dict/javascript.dict
au FileType html,htm,smarty let g:javascript_enable_domhtmlcss = 1
au Filetype java setlocal omnifunc=javacomplete#Complete
"au FileType go   setlocal dict+=~/.vim/dict/go.dict
" vim无法认出json，遇到json后缀的，告诉一下vim这个是json
au BufRead,BufNewFile *.json set filetype=json
"txt文件高亮
au BufRead,BufNewFile *.txt,*.md set filetype=txt

" 新建文件模板, 创建一个skeletons目录
autocmd BufNewFile *.php 0r ~/.vim/skeletons/php.skel
autocmd BufNewFile *.go 0r ~/.vim/skeletons/go.skel
autocmd BufNewFile *.html 0r ~/.vim/skeletons/tpl.skel
autocmd BufNewFile *.tpl 0r ~/.vim/skeletons/tpl.skel
autocmd BufNewFile *.json 0r ~/.vim/skeletons/json.skel
autocmd BufNewFile *.java 0r ~/.vim/skeletons/java.skel





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TagbarToggle右侧的函数列表树 替换taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width     = 30


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabular 文本对齐
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 比如
" $a = 100;
" $b   = 100; 
" 你可以选择根据=号对齐, 用法: Tab/=, 也可以选择根据别的方式对齐

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => zencoding 代码块，后面改名为 emmet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplacache 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭AutoComplPop，会和neocomplcache有冲突
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_disable_auto_complete = 0 " 设置NeoComplCache自动弹出补全列表
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1 " 支持智能匹配
let g:neocomplcache_enable_camel_case_completion = 1 " 支持驼峰格式匹配关键词
let g:neocomplcache_enable_underbar_completion = 1 " 支持下划线分割的关键词
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 3
let g:neocomplcache_enable_ignore_case = 1 " 支持忽略匹配
let g:neocomplcache_lock_buffer_name_pattern = '/*ku/*'
let g:neocomplcache_max_list = 20 " 下拉列表个数
let g:neocomplcache_enable_auto_select = 1 "支持在下拉框自动选择第一个
" let g:neocomplcache_enable_auto_delimiter = 1 " 分隔符
" let g:neocomplcache_enable_wildcard = 1 " 通配符
" let g:neocomplcache_enable_caching_message=1 "显示启动进度

" 17.跳过tpl，html 文件的语法检查，插件syntastic的配置
let g:syntastic_ignore_files=['.*\.tpl$', '.*\.html$','.*\.htm$','.*\.go$','.*\.dwt$']

"18 静态分析器 syntastic 错误标识
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'

"19 timestamp.vim 自动更新文件最后一次修改时间
"let timestamp_regexp = '\v\C%(<Last %([cC]hanged?|[Mm]odified):\s+)@<=.*$'
"set modelines=20   
"let g:timestamp_rep = '%m/%d/%Y %X'
"let timestamp_regexp = '\v\C%(<modified:\s+)@<=.*$'
"set modelines=20
"let g:timestamp_rep = '%Y-%m-%d %H:%M'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"20 优化大文件编辑
let g:LargeFile=50

"21 YouCompleteMe智能补全工具
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf = 0
" 开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 输入第 2 个字符开始补全
let g:ycm_min_num_of_chars_for_completion= 2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"定义快捷健补全
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

"设置关健字触发补全
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:ycm_cache_omnifunc = 1
let g:ycm_use_ultisnips_completer = 1
"定义函数跟踪快捷健
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>


