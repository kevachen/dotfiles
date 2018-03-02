set nocompatible              " required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" GENERAL
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'isobit/vim-darcula-colors'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'tpope/vim-fugitive'

" PYTHON
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'davidhalter/jedi-vim'
Plug 'nvie/vim-flake8'
Plug 'tmhedberg/SimpylFold'


call plug#end()


filetype plugin indent on    " required

syntax enable
colo seoul256

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" utf-8 encoding
set encoding=utf-8

let python_highlight_all=1
syntax on

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>

" Line numbers
set nu

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

"""         FZF             """"
nnoremap <leader>f :<C-u>GFiles<cr>
nnoremap <leader>p :<C-u>FZF<cr>
nnoremap <leader>b :<C-u>Buffers<cr>
