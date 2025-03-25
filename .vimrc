" Enable syntax highlighting and file type detection
syntax on
filetype indent on
filetype plugin on

" Set line numbers
set number
set relativenumber  " Relative line numbers for easy navigation

" Enable auto-indentation
set autoindent
set smartindent
set expandtab       " Use spaces instead of tabs
set shiftwidth=4    " Number of spaces per indentation level
set tabstop=4       " Number of spaces per tab

" Search settings
set ignorecase      " Case insensitive search
set smartcase       " Case-sensitive if search contains uppercase
set hlsearch        " Highlight search results
set incsearch       " Show matches while typing

" Better navigation
set scrolloff=5     " Keep 5 lines above/below cursor when scrolling
set backspace=indent,eol,start  " Allow backspacing over everything

" Clipboard
set clipboard=unnamedplus  " Use system clipboard for copy-paste

" Better command line behavior
set wildmenu        " Enhanced command-line completion
set wildmode=longest:full,full  " Command-line completion mode

" Status line
set laststatus=2    " Always show the status line
set showcmd         " Show command in status bar
set ruler           " Show cursor position

" Disable annoying swap files
set noswapfile
set nobackup
set nowritebackup

" Mapping for fast saving
nnoremap <leader>w :w<CR>

" Disable bell sound
set noerrorbells
set visualbell

" Set encoding
set encoding=utf-8
set fileencoding=utf-8

