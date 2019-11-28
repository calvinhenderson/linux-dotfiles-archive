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
set tabstop=2
set shiftwidth=2
set expandtab

" Gutter
set number
set relativenumber
set numberwidth=4

" Colors
syntax enable
colo xresources

" Visual
set noshowmode
set nospell
set hlsearch
set hidden
set fillchars=vert:│,fold:\ ,stl:\ ,stlnc:\ 

" Search case sensitivity
set ignorecase
set smartcase

" Cursor line
set nocursorline

" Makefile indentation
au BufEnter Makefile set noexpandtab
"au BufWritePre Makefile %s/^\([\t]*\)    /\1\t/ | call setpos('.', getpos("''"))

" Wildmenu
set wildmenu

" Tags file
set tags=./tags;/

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

function! ModeStatuslineFlag()
    let l:mode=mode()
    if l:mode==#"n"
        return "NORMAL"
    elseif l:mode==?"v"
        return "VISUAL"
    elseif l:mode==#"i"
        return "INSERT"
    elseif l:mode==#"R"
        return "REPLACE"
    elseif l:mode==?"s"
        return "SELECT"
    elseif l:mode==#"t"
        return "TERMINAL"
    elseif l:mode==#"c"
        return "COMMAND"
    elseif l:mode==#"!"
        return "SHELL"
    endif
endfunction

" Always show
set laststatus=2

" Formatting
set statusline=
set statusline+=%2*\ %{ModeStatuslineFlag()}\ %*
set statusline+=%1*\ \ %*
set statusline+=%2*\ %{ModifiedStatuslineFlag()}\ %*
set statusline+=%1*\ \ %f\ \ %*
set statusline+=%<%=
set statusline+=%1*\ \ %{SyntasticStatuslineFlag()}\ \ %*
set statusline+=%2*\ %l:%c\ %B\ %*
set statusline+=%1*\ \ #%n\/%{bufnr('$')}\ \ %*
set statusline+=%2*\ %{strftime('%R',getftime(expand('%')))}\ %*
