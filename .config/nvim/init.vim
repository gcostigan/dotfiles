function Md2pdf(filename)
    execute 'silent !md2pdf' a:filename
endfunction

function WN()
    :w
    call Md2pdf(expand('%:t'))
endfunction


" turn off leader key timeout
set notimeout nottimeout

" set leader to space
let mapleader=" "

" allow mouse scroll in tmux
set mouse=a

" turn hybrid line numbers on
set nu rnu

" turn syntax on
syntax on

" set shiftwidth
set shiftwidth=4

" set colorscheme
colorscheme Tomorrow-Night-Bright

source ~/.config/nvim/plugins/vim-plug.vim
source ~/.config/nvim/plugins/coc.nvim.vim
source ~/.config/nvim/plugins/defx.vim
source ~/.config/nvim/plugins/vim-prettier.vim
source ~/.config/nvim/plugins/vim-airline.vim
source ~/.config/nvim/plugins/vim-anyfold.vim
source ~/.config/nvim/plugins/fzf.vim
" source ~/.config/nvim/plugins/vimspector.vim
