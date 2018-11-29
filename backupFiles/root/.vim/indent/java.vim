"缩进
set tabstop=4
set shiftwidth=4
"括号自动补全
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

"F5 启动
map <F5> :call CompileJava()<CR>
func! CompileJava()
    exec "w"
    exec "!javac % && java %<"
   " exec "!java %<"
endfunc
