if exists("b:current_syntax")
    finish
endif

syn region Normal start=+'+ skip=+\\'+ end=+'+
syn region Normal start=+"+ skip=+\\"+ end=+"+
syn keyword Keyword import qualified type data class instance
hi! Keyword gui=bold

let b:current_syntax = "haskell"
