"----------
" Keybinds
"----------

" Toggle line numbers
nnoremap <C-k><C-n> :set number!<CR>

" Switching buffers/tabs
nnoremap <C-h>  :bp<CR>
nnoremap <C-l>  :bn<CR>

" Attempt to close buffer without closing split
nnoremap <C-q>  :bp<CR>:bd#<CR>

" YouCompleteMe GoTo binds
nnoremap <C-s>  :YcmCompleter GoTo<CR>
