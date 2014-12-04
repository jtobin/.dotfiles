" Vim syntax file
" Language: Ludwig
" Maintainer: Jared Tobin

if exists("b:current_syntax")
  finish
endif

" https://stackoverflow.com/questions/12238305/vim-syntax-highlighting-and-certain-characters
setlocal iskeyword+=-
setlocal iskeyword+=.
syn case ignore

" Rules flow from least specific to most specific

" Int and a general keyword
syn match ludwigInt "\s\+\d\+"
syn match ludwigKey "[a-zA-Z0-9\-_]\+\s*:"

" Reserved keywords
syn match ludwigKeyword "^requires"
syn match ludwigKeyword "^main:"
syn keyword ludwigBoolean true false

" Strings
syn region ludwigString start="'" end="'" skip="\\'"
syn region ludwigString start='"' end='"' skip='\\"'

" Data declarations
syn region ludwigData start="^[a-zA-Z0-9\-_]*" end=":\s*$" oneline
syn match ludwigKey ".*:" contained containedin=ludwigData
syn match ludwigType "^[a-zA-Z0-9\-_]*\s*" contained containedin=ludwigData

" Type definitions
syn region ludwigDefinition start="^define" end="$" oneline
syn match ludwigType ".*:" contained containedin=ludwigDefinition
syn match ludwigKeyword "^define" contained containedin=ludwigDefinition

" Int as keys in dicts
syn region braces start="{" end="}" fold transparent
syn match ludwigKey "\s\+[0-9\-]\+\s*:" contained containedin=braces

" Comments
syn match ludwigComment "\v#.*$"

" Colors choice
highlight link ludwigComment    Comment
highlight link ludwigKeyword    Statement
highlight link ludwigDefinition Comment
highlight link ludwigType       Type
highlight link ludwigString     String
highlight link ludwigKey        Identifier
highlight link ludwigBoolean    Boolean
highlight link ludwigInt        Number

let b:current_syntax = "ludwig"

