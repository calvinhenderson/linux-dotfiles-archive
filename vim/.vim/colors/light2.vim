
" Reset
hi clear
colo default
set background=light

" Length
hi ColorColumn NONE ctermfg=15 ctermbg=0 cterm=bold
hi OverLength NONE ctermfg=0 ctermbg=1 cterm=bold,italic
match OverLength /\%81v.\+/

" Syntax
hi Comment NONE ctermfg=7 cterm=italic
hi MatchParen NONE ctermfg=0 cterm=bold,underline
hi String NONE ctermfg=1 cterm=italic

" Cursor
hi CursorLine NONE ctermfg=8 cterm=underline
hi Visual NONE ctermfg=8 ctermbg=7 cterm=italic

" Status lines
hi ErrorMsg NONE ctermfg=1 ctermbg=none cterm=bold
hi Error NONE ctermfg=1 ctermbg=none cterm=bold
hi StatusLineNC NONE ctermfg=7 cterm=italic
hi StatusLine NONE ctermfg=0 cterm=italic
hi VertSplit NONE ctermfg=0

" Gutter
hi NonText NONE ctermfg=15 ctermbg=15 cterm=bold
hi SignColumn NONE ctermfg=15 cterm=bold
hi FoldColumn NONE ctermfg=7 cterm=bold
hi Folded NONE ctermfg=15 cterm=bold,underline
hi LineNr NONE ctermfg=7
hi CursorLineNr NONE ctermfg=1 cterm=bold

" Floating window
hi Pmenu NONE ctermfg=0 ctermbg=7
hi PmenuSel NONE ctermfg=0 ctermbg=7 cterm=bold
