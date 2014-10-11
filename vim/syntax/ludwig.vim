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

syn keyword ludwigRequire requires
syn keyword ludwigStatement compile

syn match ludwigType "define\s\+[A-z0-9\-]*:"

syn match ludwigComment "\v#.*$"

syn region braces start="{" end="}" fold transparent
syn region quotes start=/'/ end=/'/ fold transparent

syn match ludwigKey "^[A-Za-z0-9\-]*:"
syn match ludwigInt "\s[0-9]*"

syn keyword ludwigBoolean true false

syn region ludwigString oneline start="'" end="'" skip="\\'"
syn region ludwigString oneline start='"' end='"' skip='\\"'

syn region ludwigDict start="{" end="}" contains=ludwigKey
syn match ludwigKey "[A-z0-9\-]\+\s*:" contained containedin=ludwigDict

syn region ludwigExplDecl start="^(.*)" end=":" contains=ludwigKey oneline
syn match ludwigType "([A-z0-9\-]*)" contained containedin=ludwigExplDecl
syn match ludwigKey "\s\+[A-z0-9\-]*:" contained containedin=ludwigExpl

syn match ludwigKey "\s\+[A-z0-9\-]\+\s*:"

highlight link ludwigRequire PreProc
highlight link ludwigStatement Statement
highlight link ludwigComment Comment
highlight link ludwigBoolean Boolean
highlight link ludwigInt Number
highlight link ludwigString String
highlight link ludwigKey Identifier
highlight link ludwigType Type

let b:current_syntax = "ludwig"

