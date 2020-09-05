" =============================================================================
"                  / __ \/ /   / / / / ____/  _/ | / / ___/
"                 / /_/ / /   / / / / / __ / //  |/ /\__ \
"                / ____/ /___/ /_/ / /_/ // // /|  /___/ /
"               /_/   /_____/\____/\____/___/_/ |_//____/
" plugins =====================================================================
call plug#begin('~/.nvim/plugged/')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'vhakulinen/gnvim-lsp'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
let g:fzf_buffers_jump = 1
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
let g:fzf_tags_command='ctags -R'

Plug 'Chiel92/vim-autoformat'
let g:python3_host_prog='/usr/bin/python3'

Plug 'scrooloose/nerdtree'

Plug 'joshdick/onedark.vim'

" discord rich presence
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}

" Table formatting
Plug 'godlygeek/tabular'

" JSON front matter highlight plugin
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_conceal=0
let g:tex_conceal=""
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_toml_frontmatter=1
let g:vim_markdown_json_frontmatter=1

call plug#end()

" =============================================================================
"                / ___// ____/_  __/_  __/  _/ | / / ____/ ___/
"                \__ \/ __/   / /   / /  / //  |/ / / __ \__ \
"               ___/ / /___  / /   / / _/ // /|  / /_/ /___/ /
"              /____/_____/ /_/   /_/ /___/_/ |_/\____//____/
" settings ====================================================================

" Neovide GUI
"let g:neovide_no_idle=v:false
"let g:neovide_fullscreen=v:false
let g:neovide_refresh_rate=120
let g:neovide_no_idle=v:false
let g:neovide_transparency=1.0
let g:neovide_cursor_vfx_mode="railgun"
let g:neovide_cursor_vfx_particle_density=0
let g:neovide_cursor_animation_length=0.1
let g:neovide_cursor_trail_length=0.5

" language
set encoding=UTF-8
set spelllang=en

" word wrapping
set textwidth=0
set wrapmargin=0
set nowrap

" indentation
set tabstop=2
set shiftwidth=2
set expandtab

" visual
if has("termguicolors")
  set termguicolors
  set t_Co=256
endif
set noshowmode
set nospell
set hlsearch
set hidden
set fillchars=vert:│,fold:\ ,stl:-,stlnc:-
set nocursorline
set wildmenu
set laststatus=2
syntax on
set foldmethod=syntax
set foldlevel=1
set foldlevelstart=99
set guifont=monospace:h18
set shortmess+=c
set cmdheight=2

if has("patch-8.1.1564")
  " merge signcolumn and number column
  set signcolumn=number
else
  set signcolumn=yes
endif

" swap file
set nobackup
set nowritebackup
set updatetime=300

" case sensitivity
set ignorecase
set smartcase

" tags file
set tags=./tags;/


" =============================================================================
"                     / ____/ __ \/ /   / __ \/ __ \/ ___/
"                    / /   / / / / /   / / / / /_/ /\__ \
"                   / /___/ /_/ / /___/ /_/ / _, _/___/ /
"                   \____/\____/_____/\____/_/ |_|/____/
" colors ======================================================================
colo desert_v2
hi StatusLine      cterm=bold,italic    gui=bold,italic
hi StatusLineNC    cterm=none           gui=none
hi VertSplit       cterm=none           gui=none
hi PmenuSel        cterm=reverse        gui=reverse
hi Visual          cterm=reverse        gui=reverse

" =============================================================================
"                  / //_// ____/\ \/ / __ )/  _/ | / / __ \/ ___/
"                 / ,<  / __/    \  / __  |/ //  |/ / / / /\__ \
"                / /| |/ /___    / / /_/ // // /|  / /_/ /___/ /
"               /_/ |_/_____/   /_/_____/___/_/ |_/_____//____/
" keybinds ====================================================================
let mapleader=' '

" saving
nmap <leader>w :w<CR>
nmap <leader>q :bd<CR>
nmap <leader>Q :q<CR>

" fzf
"nmap <silent> <C-p>     :Files<CR>
"nmap <silent> <leader>b :Buffers<CR>
"nmap <silent> <leader>f :Rg<CR>

"nmap <leader><tab> <plug>(fzf-maps-n)
"xmap <leader><tab> <plug>(fzf-maps-x)
"omap <leader><tab> <plug>(fzf-maps-o)
"
"imap <c-x><c-k> <plug>(fzf-complete-word)
"imap <c-x><c-f> <plug>(fzf-complete-path)
"imap <c-x><c-j> <plug>(fzf-complete-file-ag)
"imap <c-x><c-l> <plug>(fzf-complete-line)

" buffer navigation
nmap <C-h> :bp<CR>
nmap <C-l> :bn<CR>

" split navigation
nmap <M-h> <C-W>h
nmap <M-j> <C-W>j
nmap <M-k> <C-W>k
nmap <M-l> <C-W>l

" tabs
nmap <M-t>c :tabnew<CR>
nmap <M-h> :tabprevious<CR>
nmap <M-l> :tabnext<CR>

" gutter
nmap <M-k><M-n> :set number!<CR>
nmap <M-k><M-r> :set relativenumber!<CR>

" nerdtree
map <C-k><C-n> :NERDTreeToggle<CR>

" coc
imap <silent><expr> <tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<tab>" :
      \ coc#refresh()
imap <expr><S-tab> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" search document outline
nmap <leader>lo :CocList outline<CR>
nmap <leader>ls :CocList symbols<CR>
nmap <leader>li :CocList links<CR>
nmap <leader>ld :CocList diagnostics<CR>

" Mapping to trigger coc completion.
imap <silent><expr> <M-tab> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" =============================================================================
"   /   | / / / /_  __/ __ \/ ____/ __ \/  |/  /  |/  /   |  / | / / __ \/ ___/
"  / /| |/ / / / / / / / / / /   / / / / /|_/ / /|_/ / /| | /  |/ / / / /\__ \
" / ___ / /_/ / / / / /_/ / /___/ /_/ / /  / / /  / / ___ |/ /|  / /_/ /___/ /
"/_/  |_\____/ /_/  \____/\____/\____/_/  /_/_/  /_/_/  |_/_/ |_/_____//____/
" autocommands ================================================================

augroup defaultbindings
  au! defaultbindings

  " Format file after inserting text, and before writing
  au BufWritePre * :Autoformat

  " Show cursor line when window is focused
  au FocusGained * set cursorline
  au FocusLost   * set nocursorline

  " Open NERDTree on empty startup
  au StdinReadPre * let s:std_in=1
  au VimEnter     * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

  " Fix indentation in makefiles
  au BufEnter Makefile set noexpandtab
augroup end

augroup cbindings
  au! cbindings
  " Comments
  au FileType c,cpp nmap <buffer> <C-c> I// <esc>
  au FileType c,cpp vmap <buffer> <C-c> :<,>norm I// <CR>

  " Configure cmake
  "au BufEnter CMakeLists.txt set filetype=cmake
  au FileType c,cpp nmap <buffer> <F5>   :new +r\ !cmake\ --build\ build<CR>
  au FileType c,cpp nmap <buffer> <S-F5> :new +r\ !cmake\ --build\ build\ -t\ run<CR>
augroup end
