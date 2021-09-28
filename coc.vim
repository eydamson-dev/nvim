
let g:coc_global_extensions = [
  \ 'coc-actions',
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-vimlsp',
  \ 'coc-highlight',
  \ 'coc-prettier',
  \ 'coc-highlight',
  \ 'coc-explorer',
  \ 'coc-emmet',
  \ 'coc-ember',
  \ 'coc-phpls',
  \ 'coc-yaml',
\ ]

" command! -nargs=0 Prettier :CocCommand prettier.formatFile 
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Explorer
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif


