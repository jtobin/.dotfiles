call pathogen#infect()

set background=dark
colorscheme solarized

set tabstop=2 shiftwidth=2 expandtab
set laststatus=2
set number

filetype plugin on
syntax on

" haskellmode-vim 
au BufEnter *hs compiler ghc
let g:haddock_browser = "open"
let g:haddock_indexfiledir = "~/.vim/"
let g:haddock_browser_callformat = "%s %s"

" ctags
" let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'
" set tags=tags

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" neco-ghc
let g:necoghc_enable_detailed_browse = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" clojure-specific
au BufEnter *clj colorscheme elflord

