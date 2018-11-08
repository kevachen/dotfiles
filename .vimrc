set nocompatible              " required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" COLORSCHEMES
Plug 'junegunn/seoul256.vim'

" GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" GENERAL
Plug 'airblade/vim-rooter'
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'rodjek/vim-puppet'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'w0rp/ale'

" TMUX
Plug 'christoomey/vim-tmux-navigator'

" JAVASCRIPT
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" PYTHON
Plug 'davidhalter/jedi-vim'
Plug 'Vimjas/vim-python-pep8-indent'

call plug#end()

""""        SPLITTING       """"
set splitbelow
set splitright

""""        FOLDS           """"
nnoremap <space> za
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

""""        INDENTATION     """"
syntax enable       " enable syntax processing
set expandtab       " tabs are spaces
set shiftwidth=4    " number of spaces <</>> uses
set softtabstop=4   " number of spaces in tab when editing
set tabstop=4       " number of visual spaces per TAB

""""        GENERAL         """"
set autoread        " reload files changed outside vim
set backspace=2     " make backspace behave properly
set encoding=utf8   " use utf8"
set hidden          " hides buffers instead of closing them
set visualbell      " no sounds
set hlsearch        " highlight searches
set ignorecase      " ignore case when searching
set incsearch       " search as characters are entered
set smartcase       " ... unless a capital letter is typed

""""        UI CONFIG       """"
filetype indent on  " load filetype-specific indent files
filetype plugin on  " load filetype-specific plugins
set laststatus=2    " always show statusbar
set lazyredraw      " redraw only when we need to
set linebreak       " wrap lines at convenient places
set mouse=a         " enable mouse support
set nowrap          " don't wrap lines
set showcmd         " show command in bottom bar
set showmatch       " highlight matching [{()}]
set wildmenu        " visual autocomplete for command menu
colo seoul256       " junegunn theme

"""         FZF             """"
nnoremap <leader>f :<C-u>GFiles<cr>
nnoremap <leader>p :<C-u>FZF<cr>
nnoremap <leader>b :<C-u>Buffers<cr>

"""         VIM TEST         """
let test#python#runner = 'pytest'

""""        JAVASCRIPT       """
let g:javascript_plugin_flow = 1

""""        ALE             """"
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 1000
let g:ale_lint_on_text_changed = 'normal'  " only lint in normal mode

""""        NO SWAP FILES   """"
set nobackup
set noswapfile
set nowb
