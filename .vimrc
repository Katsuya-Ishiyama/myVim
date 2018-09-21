set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" colorschema
Plugin 'git://github.com/ajh17/Spacegray.vim.git'
Plugin 'bling/vim-airline'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/w0ng/vim-hybrid'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'https://github.com/python-mode/python-mode.git'
Plugin 'https://github.com/davidhalter/jedi-vim'
Plugin 'derekwyatt/vim-scala'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme molokai
"set background=dark
set t_Co=256
syntax on

set number
set cursorline
set showmatch
set matchtime=2
set title

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

set list

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]
set fdm=marker commentstring=;#%s
set scrolloff=8

set laststatus=2
set cmdheight=1

set wildmenu wildmode=list:longest,full

set history=50

set clipboard=unnamedplus

let mapleader = "\<Space>"

" Increment or Decrement number
nnoremap + <C-a>
nnoremap - <C-x>

" yank end of line
nnoremap Y y$

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

let g:airline_theme='hybrid'

