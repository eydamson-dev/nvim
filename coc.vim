
let g:coc_global_extensions = [
  \ 'coc-actions',
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-vimlsp',
  \ 'coc-highlight',
  \ 'coc-ember',
  \ 'coc-prettier',
  \ 'coc-highlight',
  \ 'coc-explorer',
  \ 'coc-emmet',
\ ]

" command! -nargs=0 Prettier :CocCommand prettier.formatFile 
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Explorer
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>


autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
