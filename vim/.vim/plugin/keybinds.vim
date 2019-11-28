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
nnoremap <silent> <C-k><C-n> :call gutter#toggle_line_numbers()<CR>
nnoremap <silent> <C-k><C-r> :call gutter#toggle_relative_numbers()<CR>

" Line commenting
nnoremap gc :norm I// <CR>
nnoremap gC :s/\(^\s*\)\/\/\s/\1/g<CR>:noh<CR>

vnoremap gc :norm I// <CR>
vnoremap gC :s/\(^\s*\)\/\/\s/\1/g<CR>:noh<CR>

" Switching buffers/tabs
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>

" Attempt to close buffer without closing split
nnoremap <Leader>q :bp<CR>:bd#<CR>

" Netrw
nmap gs * <Plug>NetrwShrink

" vim-clang-format binds
nnoremap <Leader>F :ClangFormat<CR>
vnoremap <Leader>F :ClangFormat<CR>

" YouCompleteMe binds
nnoremap <Leader>j :YcmCompleter GoTo<CR>
nnoremap <Leader>f :YcmCompleter FixIt<CR>
