if exists("b:current_syntax")
    finish
endif

syn match Keyword '\v(pub\s+)?(extern\s+)?fn\s+[a-zA-Z][a-zA-Z0-9_]*'
syn match Keyword '\v(type|struct|impl|enum)\s+[a-zA-Z][a-zA-Z0-9_]*'
syn region Normal start=+"+ skip=+\\"+ end=+"+
syn keyword Keyword use extern crate
syn match Normal '^\s*\/\/.*'
hi! Keyword gui=bold

let b:current_syntax = "rust"
