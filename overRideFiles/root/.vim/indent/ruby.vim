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
map <F5> :call CompileRuby()<CR>
func! CompileRuby()
    exec "w"
    exec "!ruby ./%"
endfunc

"自动插入文件头
"call setline(1,"#!/usr/bin/ruby")
