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
Bundle 'airblade/vim-gitgutter'
Bundle 'mileszs/ack.vim'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'vim-airline/vim-airline'
" Javascript support
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'AndrewRadev/vim-eco'
" Elixir support (It is necessary to comment last option on one of plugin files to avoid errors)
Bundle 'elixir-lang/vim-elixir' 

call vundle#end()          
filetype plugin indent on 

set t_Co=256
syntax on
syntax enable

colorscheme railscasts2

set encoding=utf-8
filetype plugin indent on

" Set the leader
let mapleader = ","

" Highlight ack results
let g:ackhighlight = 1

" Do not break long lines
set nowrap

" Split on right vertical
set splitright
set splitbelow

" Disable bells
set vb t_vb=.

" Select all text
map <C-A> ggVG

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
" map <Left> <Nop>
" map <Right> <Nop>
" map <Up> <Nop>
" map <Down> <Nop>

" Tree mode for netrw by default
" let g:netrw_liststyle=3

" Start NERDTree on startup
" autocmd VimEnter * NERDTree

" NERDTree shortcut
function OpenNERDTree()
  execute ":NERDTreeToggle"
endfunction
command -nargs=0 OpenNERDTree :call OpenNERDTree()

nmap <ESC>t :OpenNERDTree<CR>

" Display cursorline
set cursorline

"##############################################################################                                                                         
" Easier window navigation
"##############################################################################                                                                         

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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
set t_vb=
 
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

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Splits management
function! WinMove(key) 
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr()) "we havent moved
    if (match(a:key,'[jk]')) "were we going up/down
      wincmd v
    else 
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
 
map <leader>h              :call WinMove('h')<cr>
map <leader>k              :call WinMove('k')<cr>
map <leader>l              :call WinMove('l')<cr>
map <leader>j              :call WinMove('j')<cr>

nmap <left>  :3wincmd <<cr>
nmap <right> :3wincmd ><cr>
nmap <up>    :3wincmd +<cr>
nmap <down>  :3wincmd -<cr>

map <leader>H              :wincmd H<cr>
map <leader>K              :wincmd K<cr>
map <leader>L              :wincmd L<cr>
map <leader>J              :wincmd J<cr>

" JSX syntax highliting on js files
let g:jsx_ext_required = 0
let g:used_javascript_libs = 'underscore,backbone,jquery,react,ramda,jasmine'

" Trim whitespaces
fun! TrimWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()
:noremap <Leader>w :call TrimWhitespace()<CR>

