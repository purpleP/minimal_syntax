if exists("b:current_syntax")
    finish
endif

syn match Keyword '\v(pub\s+)?(extern\s+)?fn\s+[a-zA-Z][a-zA-Z0-9_]*'
syn match Keyword '\v(type|struct|enum|trait)\s+[a-zA-Z][a-zA-Z0-9_]*'
syn region Normal start=+"+ skip=+\\"+ end=+"+
syn region traitImpl matchgroup=Keyword start="impl" end=" \ze{" contains=traitName,typeNameInImpl
syn match traitName '>\s*\zs[a-zA-Z][a-zA-Z0-9_]*\ze.*\<for\>'
syn match typeNameInImpl '\<for\s\+[a-zA-Z][a-zA-Z0-9_]*'
syn keyword Keyword use extern crate
syn match Normal '^\s*\/\/.*'
hi! Keyword gui=bold
hi! link genericType Normal
hi! link traitName Keyword
hi! link typeNameInImpl Keyword

let b:current_syntax = "rust"
