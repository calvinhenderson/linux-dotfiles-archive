" Reset
hi clear
colo zellner
set background=light

" Length
hi ColorColumn NONE ctermfg=white ctermbg=black cterm=bold
hi OverLength NONE ctermfg=black ctermbg=red cterm=bold,italic
match OverLength /\%81v.\+/

" Syntax
hi Comment NONE ctermfg=gray ctermbg=black cterm=bold,italic
hi MatchParen NONE cterm=bold,underline
hi String NONE ctermfg=white ctermbg=black cterm=italic

" Cursor
hi CursorLine NONE ctermfg=white ctermbg=black cterm=bold,underline
hi Visual NONE ctermfg=red ctermbg=black cterm=bold,italic

" Status lines
hi ErrorMsg NONE ctermfg=red ctermbg=black cterm=bold
hi Error NONE ctermfg=red ctermbg=black cterm=bold
hi StatusLineNC NONE ctermfg=gray ctermbg=black cterm=bold
hi StatusLine NONE ctermfg=white ctermbg=black cterm=bold
hi VertSplit NONE ctermfg=white

" Gutter
"hi NonText NONE ctermfg=gray ctermbg=black cterm=bold
hi NonText NONE ctermfg=black ctermbg=black
hi SignColumn NONE ctermfg=white ctermbg=black cterm=bold
hi FoldColumn NONE ctermfg=gray ctermbg=black cterm=bold
hi Folded NONE ctermfg=white ctermbg=black cterm=bold,underline
hi LineNr NONE ctermfg=red ctermbg=black
hi CursorLineNr NONE ctermfg=white ctermbg=black cterm=bold

" Floating window
hi Pmenu NONE ctermfg=red ctermbg=black
hi PmenuSel NONE ctermfg=white ctermbg=black cterm=bold
