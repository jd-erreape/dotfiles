execute pathogen#infect()

" CtrlP plugin
" set runtimepath^=~/.vim/bundle/ctrlp.vim

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

syntax on

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
set smarttab
set autoindent
 
set ruler	

set undolevels=1000	
set backspace=indent,eol,start
