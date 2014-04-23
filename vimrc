call pathogen#infect()

set background=dark
colorscheme solarized
set tabstop=2 shiftwidth=2 expandtab
set laststatus=2
set relativenumber
set guioptions-=r
set guioptions-=L
set cc=80

filetype plugin on
syntax on

" ack
let g:ackprg="/usr/local/bin/ack"

" haskellmode-vim 
au BufEnter *hs compiler ghc
let g:haddock_browser = "open"
let g:haddock_indexfiledir = "~/.vim/"
let g:haddock_browser_callformat = "%s %s"

" syntastic
map <silent> <Leader>e :Errors<CR>
map <Leader>s :SyntasticToggleMode<CR>

" ctags
" let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'
" set tags=tags

" neocomplcache
let g:neocomplcache_force_overwrite_completefunc = 1 " killer
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" neco-ghc
let g:necoghc_enable_detailed_browse = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" clojure only
" au BufEnter *clj colorscheme elrodeo

set statusline+=%{fugitive#statusline()}

" church
au BufEnter *sc set filetype=lisp
au BufEnter *church set filetype=lisp

" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()

