"-------------------General Mappings------------------"
"
"
"
"
" Edit General settings
nmap <Leader>eg :tabedit ~/.config/nvim/general.vim<cr>
" Edit keyboard mappings
nmap <Leader>em :tabedit ~/.config/nvim/mappings.vim<cr>
"shortcut edit neovim config init
nmap <Leader>en :tabedit ~/.config/nvim/init.vim<cr>
"shortcut edit plug plugins
nmap <Leader>ep :tabedit ~/.config/nvim/vim-plug/plugins.vim<cr>



"-------------------Alacritty------------------"
nmap <Leader>ea :tabedit ~/.config/alacritty/alacritty.yml<cr>




"-------------------General------------------"
"
"
"
"remap command mode
nmap ;; :

"remap gf to open on new tab by default
nmap gf <C-w>gf<cr>

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>



"-------------------Searching------------------"
"
"
"
set hlsearch
set incsearch
nmap <Leader><space> :nohlsearch<cr>




"-------------------Window Management------------------"
"
"
"
"

set splitbelow
set splitright

"---# Window traversal

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Use alt + hjkl to resize windows
nnoremap ∆ :resize -2<CR>
nnoremap ˚ :resize +2<CR>
nnoremap ¬ :vertical resize -2<CR>
nnoremap ˙ :vertical resize +2<CR>



" -------------------- Tab control
"
"
"
"---# Tab navigation
" nnoremap K :tabnext<CR>
" nnoremap J :tabprev<CR>
nnoremap <tab> :tabnext<CR>
nnoremap <s-tab> :tabprev<CR>

nnoremap < :tabm -1<CR>
nnoremap > :tabm +1<CR>

"
"---# Buffer management
" nnoremap <tab> :bnext<CR>
" nnoremap <s-tab> :bprevious<CR>
nnoremap K :bnext<CR>
nnoremap J :bprevious<CR>
nnoremap <c-x> :bd<cr>

" Better tabbing
vnoremap < <gv
vnoremap > >gv



" -------------------- File saving ang exit
"
"
"
" Alternate way to save
nnoremap <C-s> :w<CR>

" easier quit
nmap <C-q> :q<cr>

" force quite
nmap <C-S-Q> :q!<cr>



