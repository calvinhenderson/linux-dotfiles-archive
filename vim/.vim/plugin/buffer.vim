"-------------------------
" Default Buffer Settings
"-------------------------

" Locale
set enc=utf-8
set spelllang=en

" Line wrapping
set tw=0
set wm=0
set nowrap

" Wrap Column
set cc=

" Tabstop
set tabstop=4
set shiftwidth=4
set expandtab

" Gutter
set number
set fdc=0
set rnu

" Colors
syntax enable
colo xresources

" Visual
set nospell
set hlsearch
set hidden
set fillchars=vert:│,fold:\ ,stl:\ ,stlnc:\ 

" Search case sensitivity
set ignorecase
set smartcase

" Cursor line
set cursorline

" Makefile indentation
au BufEnter Makefile set noexpandtab
"au BufWritePre Makefile %s/^\([\t]*\)    /\1\t/ | call setpos('.', getpos("''"))

" Wildmenu
set wildmenu

" Status Line
function! ModifiedStatuslineFlag()
    " I don't like the statusline %m flag's format. Can you really blame me? :)
    if (&readonly)
        return "RO"
    elseif (&modified)
        return "+"
    else
        return "-"
    endif
endfunction

function! NumBuffersStatuslineFlag()
    return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction

" Always show
set laststatus=2

" Formatting
set statusline=
set statusline+=%2*\ %{ModifiedStatuslineFlag()}\ %*
set statusline+=%1*\ ‹‹\ %f\ ››\ %*
set statusline+=%1*\ 
set statusline+=%<%=
set statusline+=%2*%{SyntasticStatuslineFlag()}
set statusline+=%2*\ %l:%c\ %B\ %*
set statusline+=%1*\ 
set statusline+=%2*\ %{strftime('%R',getftime(expand('%')))}\ #%n\/%{bufnr('$')}\ %*
