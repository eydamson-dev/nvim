
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=500

" Create map to add keys to
let g:which_key_map =  {}
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 't' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ }

call which_key#register(',', "g:which_key_map")

nnoremap <leader>w :<c-u>WhichKey ','<CR>

