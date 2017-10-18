if exists("b:current_syntax")
    finish
endif

syn match Keyword '\(async\s\+\)\?def\s\+[a-zA-Z_][a-zA-Z0-9_]*'
syn match Keyword 'class\s\+[a-zA-Z][a-zA-Z0-9_]*'
syn region Normal start=+'+ skip=+\\'+ end=+'+
syn region Normal start=+"+ skip=+\\"+ end=+"+
syn match Normal '^\s*#.*'
syn keyword Keyword from import
hi! Keyword gui=bold

let b:current_syntax = "python"
