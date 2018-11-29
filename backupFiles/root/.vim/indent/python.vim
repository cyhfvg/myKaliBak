"缩进
set tabstop=2
set shiftwidth=2
"括号自动补全
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i

"F5 启动
map <F5> :call CompilePython()<CR>
func! CompilePython()
    exec "w"
    exec "!python ./%"
endfunc
