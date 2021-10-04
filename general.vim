syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set ignorecase
set smartcase                           " Set search sensitive pattern
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			              " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	 " treat dash <s></s>eparated words as a word text objjjjkjject"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number ofjj space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamed                   " Copy paste between vim and everything else
set backspace=indent,eol,start          "Make backspace indented
let mapleader = ','                     "Set new default leader
set tabstop=1                           " Set Proper <Tabs></Tabs>
set laststatus=2                        " Always display the status line
"set autochdir                          " Your working directory will always be the same as your working directory
set encoding=utf-8
set foldmethod=indent                   " Set folding method
set nofoldenable                        " Set everthing not folder at start

set laststatus=2
set statusline+=%F

runtime macros/matchit.vim              " Enable goto matching bracket or tag using %


syntax on
let ayucolor="dark"
set background=dark
colorscheme dracula

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

if (has("termguicolors"))
 set termguicolors
endif


" Manual Syntaxes / Filetypes
autocmd BufNewFile,BufRead *.hbs setfiletype handlebars
autocmd BufNewFile,BufRead *.tsx,*.jsx setfiletype typescript.tsx
autocmd FileType javascript setlocal foldmethod=syntax


" Enable Elite mode, No ARRRROWWS!!!!
" let g:elite_mode=1


" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>


