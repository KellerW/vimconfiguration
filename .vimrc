call plug#begin('~/.vim/plugged')

" C/C++ syntax highlighting
Plug 'sheerun/vim-polyglot'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File explorer (optional, but useful)
Plug 'preservim/nerdtree'

" Linting (C/C++ code linting)
Plug 'dense-analysis/ale'

" Fuzzy finder (optional, for easier file navigation)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" NERDTree plugin
Plug 'preservim/nerdtree'

Plug 'ycm-core/YouCompleteMe'

Plug 'rhysd/vim-clang-format'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'

Plug 'puremourning/vimspector'

Plug 'honza/vim-snippets'

Plug 'SirVer/ultisnips'

Plug 'tpope/vim-projectionist'

Plug 'cdelledonne/vim-cmake'

call plug#end()

let g:ale_linters = {
\   'cpp': ['clangd', 'clangtidy', 'cppcheck'],
\   'c': ['clangd', 'clangtidy', 'cppcheck'],
\}

autocmd VimEnter * NERDTree

" Set indentation and tab settings for C/C++
autocmd FileType c,cpp setlocal shiftwidth=4 tabstop=4 expandtab

" Enable syntax highlighting
syntax on

" Show line numbers and relative line numbers
set number
set relativenumber

" Enable mouse support (optional)
" set mouse=a

" Highlight search results
set hlsearch

" Show matching parentheses
set showmatch

" Enable auto-completion menu
set completeopt=menuone,noinsert,noselect
