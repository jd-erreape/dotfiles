set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
" Javascript support
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'

call vundle#end()          
filetype plugin indent on 

set t_Co=256
syntax on
syntax enable

colorscheme railscasts

set encoding=utf-8
filetype plugin indent on

" Set the leader
let mapleader = ","

" Highlight statusbar of active pane
hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

" CtrlP plugin
" set runtimepath^=~/.vim/bundle/ctrlp.vim
map g:ctrlp_map <c-p>

" Change status bar when changing between modes
"
" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
    au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
    au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif
" -------------- END -------------------

" Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Tree mode for netrw by default
let g:netrw_liststyle=3

"##############################################################################                                                                         
"" Easier split navigation                                                                                                                               
"##############################################################################                                                                         
"
"" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

"##############################################################################                                                                         
"" Toggle relative or absolute line numbers
"##############################################################################                                                                         

" Enables relative numbers.
function! EnableRelativeNumbers()
  set nonumber
  set relativenumber
endfunc

" Disables relative numbers.
function! DisableRelativeNumbers()
  set number
  set norelativenumber
endfunc
         
function! NumberToggle()
  if(&relativenumber == 1)
    call DisableRelativeNumbers()
  else
    call EnableRelativeNumbers()
  endif
endfunction

nnoremap <C-n> :call NumberToggle()<cr>

"##############################################################################                                                                         
"" Base settings
"##############################################################################                                                                         

set number	
set linebreak
set showbreak=+++	
set textwidth=100	
set showmatch	
set visualbell
 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
  
" Use 2 spaces as tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set tabstop=2
set smarttab
set autoindent
 
set ruler	

set undolevels=1000	
set backspace=indent,eol,start

" Create swap files in ~/tmp dir
set backupdir=~/tmp
