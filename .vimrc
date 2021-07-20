syntax on " color syntax for file extension 

" line numbers
set number
set relativenumber

" line break
set linebreak	
set showbreak=+++	

" set visualbell " enable glorious screen flash 
 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
set autoindent	
set shiftwidth=4	
set smartindent	
set smarttab	
set softtabstop=4	
set ruler	 
set undolevels=1000	
set backspace=indent,eol,start	
set textwidth=100	
set showmatch	

" complete end brackets

" fix any backspace issues 
set backspace=2

" Plugins...
" Make sure to install plug-vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin() " Startup the plug-vim

Plug 'tpope/vim-fugitive' " Git plugin for vim :Git
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end() " Finish the startup of plug-vim and update

" Plugin configuration
" Nerd Tree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" open nerd tree when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" close vim if nerd tree is the last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

