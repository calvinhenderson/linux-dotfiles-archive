"----------------------
" Plugin Configuration
"----------------------

" Netrw
let g:netrw_browse_split=2
let g:netrw_wiw=0
let g:netrw_winsize=15
let g:netrw_liststyle=3
let g:netrw_usetab=1

" vim-clang-format
let g:clang_format#auto_format=1                 " auto format
let g:clang_format#auto_format_on_insert_leave=0 " auto format after insert
let g:clang_format#code_style='mozilla'          " code style
let g:clang_format#auto_formatexpr=1             " gq to format

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_enable_diagnostic_signs=1

" Limelight
let g:limelight_conceal_ctermfg=8

" Gutter
call g:gutter#init()

function! s:goyo_enter()
    Limelight
endfunction

function! s:goyo_leave()
    Limelight!
    colo xresources
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
