"----------
" Keybinds
"----------

let mapleader = ","

" Vertical scrolling
nnoremap ] <C-e>
nnoremap [ <C-y>

" Switching buffers
nnoremap gb :ls<CR>:b<space>

" Searching tags
nnoremap gt :tag<space>

" Toggle line numbers
nnoremap <C-k><C-n> :set number!<CR>
nnoremap <C-k><C-r> :set relativenumber!<CR>

" Switching buffers/tabs
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>

" Attempt to close buffer without closing split
nnoremap <Leader>q :bp<CR>:bd#<CR>

" vim-clang-format binds
nnoremap <Leader>F :ClangFormat<CR>
vnoremap <Leader>F :ClangFormat<CR>

" YouCompleteMe binds
nnoremap <Leader>j :YcmCompleter GoTo<CR>
nnoremap <Leader>f :YcmCompleter FixIt<CR>
