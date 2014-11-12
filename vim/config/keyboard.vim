map <F2> :NERDTreeToggle<CR>   " NERDTree目录树开关切换
"map <F3> :TlistToggle<CR>      " taglist标签列表开关切换
map <F3> :TagbarToggle<CR>      " tagbar标签列表开关切换
map <F4> :NERDTreeMirror<CR>gT<C-w>w<ESC>gt<C-w>w    " 新标签打开一个文件，复制目录树
"nmap <Leader>f :NERDTreeToggle<CR>
"nmap <Leader>F :NERDTreeFind<CR>
"nmap <Leader>s :NERDTreeMirror<CR>

" map php-doc key inoremap:插入模式 nnoremap:命令行模式 vnoremap:视图模式
inoremap <C-P> <ESC> :call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocSingle()<CR>

" 去掉windows下编辑器产生的 ^M
noremap  <C-M> :%s/<C-V><cr>//ge<cr>'tzt'm  
" Shift+F12 删除所有行未尾空格
" nmap <S-F12> :%s,/s/+$,,g
cmap W w
cmap Q q
" ,,m 打开MRU
nmap <Leader><Leader>m :MRU<CR>

" map svn key
" <CR>是回车，ZQ是退出小窗口的意思
map <silent> ,sd :VCSDiff<CR>
map <silent> ,su :VCSUpdate<CR>
map <silent> ,sc :VCSCommit Modified...<CR>
map <silent> ,sa :VCSAdd<CR>
map <silent> ,si :VCSInfo<CR>
map <silent> ,sl :VCSLog<CR>
map <silent> ,sn :VCSAnnotate<CR>

" 2.qq、百度、搜狗输入法是用单引号分开词的，下面这个会导致后面多出很多单引号
" inoremap ' ''<ESC>i
inoremap ` ``<ESC>i
inoremap " ""<ESC>i
inoremap < <><ESC>i
inoremap > <c-r>=ClosePair('>')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>

function! ClosePair(char)
  if getline('.')[col('.')-1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endfunction

"3 EasyGrep 搜索插件
"1 使用 Grep.vim 插件在工程内全局查找，设置快捷键。快捷键速记法：search in buffer
nmap <Leader>vb :GrepBuffer -ir<CR><CR>
"2 Grep的词在光标下,匹配所有。  <Leader>vv
"3 Grep的词在光标下,匹配整个单词。 <Leader>vV
"4 跟vv一样，但添加在现有的列表。  <Leader>va 
"5 跟vV一样，但添加在现有的列表。  <Leader>vA 
"6 执行全局搜索搜索出现在光标的这个词,并提示模式来替换它。<Leader>vr
"7 选择文件搜索和设置grep选项。 <Leader>vo 

" 4.批量替换快捷健 ,r
map <expr> <leader>r Replace_Current_Word()<Space>
func Replace_Current_Word()
	let w = expand("<cword>")
	return "\<ESC>:%s/".w."/".w."/g\<Left>\<Left>"
endfun

" 5.php快捷注释 normal模式下，直接按ps,pr组合健
map ps :call PhpDocSingle()<CR>
map pr :call PhpDocRange()<CR>

" 6 美化代码
" 选择需要格式的代码
" code-jsbeautify是调用node来进行排版的
" port install node
" codeBeautify
map <silent> ,fh :call RangeHtmlBeautify()<CR>
map <silent> ,fj :call RangeJsBeautify()<CR>
map <silent> ,fc :call RangeCSSBeautify()<CR>


" 7 窗体的移动
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"8 对 HTML 元素进行转义：< -> &lt;、> -> &gt;、& -> &amp;、空格 -> &nbsp;、行尾添加 <br />
" 先后顺序敏感
function HtmlEscape()
    retab<CR>
    silent s/&/\&amp;/eg
    silent s/</\&lt;/eg
    silent s/>/\&gt;/eg
    silent s/ /\&nbsp;/eg
    silent s/$/<br \/>/eg
endfunction
map <Leader>he :call HtmlEscape()<CR>

