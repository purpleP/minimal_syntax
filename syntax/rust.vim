if exists("b:current_syntax")
    finish
endif

syn match Keyword '\(pub\s\+\)\?fn\s\+[a-zA-Z][a-zA-Z0-9_]*'
syn match Keyword 'type\s\+[a-zA-Z][a-zA-Z0-9_]*'
syn region Normal start=+"+ skip=+\\"+ end=+"+
syn keyword Keyword use extern crate
hi! Keyword gui=bold

let b:current_syntax = "rust"
