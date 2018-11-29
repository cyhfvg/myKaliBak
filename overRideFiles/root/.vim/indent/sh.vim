"缩进
set tabstop=2
set shiftwidth=2
"括号自动补全
inoremap ' ''<ESC>i
inoremap " "$"<ESC>i
inoremap ( ()<ESC>i
inoremap [ [<Space><Space>]<ESC>hi
inoremap { {}<ESC>i
"inoremap (){ (){<CR>}<ESC>O

"F5 启动
map <F5> :call CompileShell()<CR>
func! CompileShell()
    exec "w"
    exec "!/bin/bash ./%"
endfunc
