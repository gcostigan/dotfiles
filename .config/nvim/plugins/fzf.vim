nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>F :HFiles <cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>r :Rg<cr>

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'source': 'rg --files --no-ignore-vcs --glob "!{node_modules/*,.git/*}"'}), <bang>0)

command! -bang -nargs=? -complete=dir HFiles
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'source': 'rg --files --no-ignore-vcs --hidden'}), <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
