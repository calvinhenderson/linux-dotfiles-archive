"----------------------
" Plugin Configuration
"----------------------

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_enable_diagnostic_signs=1

" Limelight
let g:limelight_conceal_ctermfg=8

function! s:goyo_enter()
    "Limelight
endfunction

function! s:goyo_leave()
    "Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
