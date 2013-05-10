set nocompatible        " we are not compatible
set number              " show line numbers
set whichwrap+=<,>,[,]  " enable arrow keys for wrapping
set smartindent         " use smart indent
set tabstop=4           " tab is 4 spaces
set shiftwidth=4        " indent 4 spaces
set expandtab           " convert tab to spaces
set softtabstop=4       " make sure we retain spaces
set nowrap              " do not wrap
set nobackup            " no backup
set noswapfile          " no swap
set encoding=utf-8      " utf-8
set ignorecase          " case insensitive search
set nopaste             " We start in no paste mode
set hidden              " hide buffers
set incsearch           " show results while searching
set hlsearch            " highlight search terms
set showmatch           " show matching parenthesis
set pastetoggle=<F2>    " F2 for paste/nopaste toggle

" Cursor line in insert mode
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

" Highlight the cursor line
:hi CursorLine   cterm=NONE ctermbg=black ctermfg=white guibg=black guifg=white
:hi CursorColumn cterm=NONE ctermbg=black ctermfg=white guibg=black guifg=white

" Highlighting for various file types
au BufRead,BufNewFile *.twig set filetype=jinja
au BufRead,BufNewFile *.twig set filetype=htmljinja
au BufRead,BufNewFile *.html set filetype=jinja
au BufRead,BufNewFile *.html set filetype=htmljinja
