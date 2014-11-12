"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => taglist 右侧的函数列表树
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set tags=./tags,./../tags,./**/tags,~/.vim/tags
" 在 .vimrc 里面已经配置了
" set tags=tags;
" set autochdir

let Tlist_Ctags_Cmd="ctags"
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1 " 当taglist是最后一个分割窗口时，自动退出vim
let Tlist_File_Fold_Auto_Close = 1 " 非当前文件，函数列表折叠隐藏
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0 " 不是一直更新tags，因为没有必要
let Tlist_Show_Menu = 1 
let Tlist_Show_One_File = 1 " 让taglist 可以同时展示多个文件的函数列表，如果想只有1个，设置为1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1 " 改成右边显示
let Tlist_WinWidth = 30
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'

