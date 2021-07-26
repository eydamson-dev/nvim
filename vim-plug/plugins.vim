call plug#begin("~/.vim/plugged")
Plug 'dracula/vim'    
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'

Plug 'tpope/vim-fugitive'

Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
Plug 'jiangmiao/auto-pairs'

" Plug 'scrooloose/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'

Plug 'alvan/vim-closetag'

Plug 'ryanoasis/vim-devicons'

Plug 'liuchengxu/vim-which-key'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Plug 'ctrlpvim/ctrlp.vim'
Plug 'justinmk/vim-sneak'
" Plug 'psliwka/vim-smoothie'
Plug 'karb94/neoscroll.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

Plug 'pangloss/vim-javascript'
Plug 'sukima/vim-javascript-imports'
Plug 'sukima/vim-ember-imports'

" Highlighting and language support
Plug 'nullvoxpopuli/coc-ember', {'do': 'yarn install --frozen-lockfile'}
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

Plug 'leafgarland/typescript-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'AndrewRadev/ember_tools.vim'

" formatter
" Plug 'sbdchd/neoformat'

" CoC / Intellisense
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'voldikss/vim-floaterm'

Plug 'bling/vim-bufferline'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'folke/zen-mode.nvim'
Plug 'Pocco81/TrueZen.nvim'

Plug 'metakirby5/codi.vim'

call plug#end()


"Auto source vim rc"

augroup autosourcing
	autocmd!
	autocmd BufWritePost plug-plugins.vim source %
augroup END


au! BufWritePost init.vim source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRCe
