if exists("b:current_syntax")
    finish
endif

syn region Normal matchgroup=Keyword start="<\/\?\w\+" end=+>+

hi! Keyword gui=bold

let b:current_syntax = "html"
