if exists("b:current_syntax")
    finish
endif

syn region Normal start=+"+ skip=+\\"+ end=+"+
syn region Normal start=+'+ skip=+\\'+ end=+'+
syn region Normal start=+\[\[+ end=+\]\]+
syn region Func matchgroup=Keyword start='^\s*function\s\+[a-zA-Z0-9_]\+' end='\<end\>' contains=Func,Stmt
syn region Stmt start='\v<(for|while|if)>' end='\<end\>' contains=Func,Stmt
syn keyword Keyword require
syn match Normal '^\s*\/\/.*'

hi! Keyword gui=bold
hi! link Func Normal
hi! link Stmt Normal

let b:current_syntax = "lua"
