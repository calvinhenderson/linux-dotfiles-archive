" =============================================================================
"                  / __ \/ /   / / / / ____/  _/ | / / ___/
"                 / /_/ / /   / / / / / __ / //  |/ /\__ \ 
"                / ____/ /___/ /_/ / /_/ // // /|  /___/ / 
"               /_/   /_____/\____/\____/___/_/ |_//____/  
" plugins =====================================================================
call plug#begin('~/.nvim/plugged/')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup=1

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'vhakulinen/gnvim-lsp'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
let g:fzf_buffers_jump = 1
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
let g:fzf_tags_command='ctags -R'

Plug 'Chiel92/vim-autoformat'

Plug 'scrooloose/nerdtree'

Plug 'joshdick/onedark.vim'

" discord rich presence
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}

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
set fillchars=vert:│,fold:\ ,stl:\ ,stlnc:\ 
set nocursorline
set wildmenu
set laststatus=0
syntax on
colorscheme onedark
set guifont=Overpass\ Mono:h18

" case sensitivity
set ignorecase
set smartcase

" tags file
set tags=./tags;/

" =============================================================================
"                  / //_// ____/\ \/ / __ )/  _/ | / / __ \/ ___/
"                 / ,<  / __/    \  / __  |/ //  |/ / / / /\__ \ 
"                / /| |/ /___    / / /_/ // // /|  / /_/ /___/ / 
"               /_/ |_/_____/   /_/_____/___/_/ |_/_____//____/  
" keybinds ====================================================================
let mapleader=','

" fzf
nmap <silent> <C-p> :call fzf#vim#files('.', {'options': '--prompt ""'})<CR>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

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
nmap K :call nerdtree#ui_glue#invokeKeyMap("<C-k>")<CR>
nmap J :call nerdtree#ui_glue#invokeKeyMap("<C-j>")<CR>

" =============================================================================
"   /   | / / / /_  __/ __ \/ ____/ __ \/  |/  /  |/  /   |  / | / / __ \/ ___/
"  / /| |/ / / / / / / / / / /   / / / / /|_/ / /|_/ / /| | /  |/ / / / /\__ \ 
" / ___ / /_/ / / / / /_/ / /___/ /_/ / /  / / /  / / ___ |/ /|  / /_/ /___/ / 
"/_/  |_\____/ /_/  \____/\____/\____/_/  /_/_/  /_/_/  |_/_/ |_/_____//____/  
" autocommands ================================================================

" Show cursor line when window is focused
autocmd FocusGained * set cursorline
autocmd FocusLost * set nocursorline

" Open NERDTree on empty startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Fix indentation in makefiles
autocmd BufEnter Makefile set noexpandtab
