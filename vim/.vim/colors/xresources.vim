
" Reset
hi clear
set background=light
colo default

" +80 char width error
hi OverLength NONE ctermfg=1 cterm=italic
match OverLength /\%81v.\+/

hi Normal NONE ctermfg=4

" Gutter
hi SignColumn   NONE ctermfg=1
hi FoldColumn   NONE ctermfg=1
hi LineNr       NONE ctermfg=9
hi CursorLineNr NONE ctermfg=13 cterm=bold
hi Todo         NONE ctermfg=1

" Visual
hi NonText          NONE ctermfg=0
hi VertSplit        NONE ctermfg=4
hi StatusLineNC     NONE ctermfg=4
hi StatusLine       NONE ctermfg=12
hi Search           NONE            cterm=bold,underline
hi Folded           NONE            cterm=italic,underline
hi Visual           NONE ctermfg=7  cterm=bold,italic
hi WildMenu         NONE ctermfg=7
hi StatusLineTermNC NONE ctermfg=4
hi StatusLineTerm   NONE ctermfg=12

" TabLine
hi TabLine     NONE
hi TabLineSel  NONE cterm=bold
hi TabLineFill NONE

" Syntax
hi Comment   NONE ctermfg=9
hi Type      NONE ctermfg=5
hi String    NONE ctermfg=1
hi Statement NONE ctermfg=2

" Floating window
hi Pmenu    NONE
hi PmenuSel NONE cterm=reverse

" Errors
hi Error            NONE ctermfg=1 cterm=bold
hi ErrorMsg         NONE ctermfg=1 cterm=bold
hi SyntasticError   NONE ctermfg=9
hi SyntasticWarning NONE ctermfg=1

" Statusline
hi User1 NONE
hi User2 NONE cterm=reverse
