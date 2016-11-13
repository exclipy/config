" START VUNDLE CONFIG
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'mbbill/undotree'
Plugin 'wincent/command-t'
Plugin 'sickill/vim-monokai'
Plugin 'easymotion/vim-easymotion'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" END VUNDLE CONFIG
filetype plugin indent on

syntax on
colorscheme solarized
set nocompatible
set backspace=indent,eol,start
set background=dark
set noautoindent
set nobackup
set nowritebackup
set history=50
set ruler
set showcmd
set incsearch
set ignorecase
set smartcase
set hlsearch
set dir=~/tmp
set whichwrap=b,s,h,l,<,>,[,]
set linebreak
set shiftwidth=2
set shiftwidth=4
set smarttab
set nosmarttab
set tabstop=8
set tabstop=4
set noexpandtab
set expandtab
set guioptions-=T
set showtabline=2
set wildignore=*.o,*.obj,*.bak,*.class
set spelllang=en_gb
set autochdir
set noerrorbells
set vb t_vb=
set undofile
set undodir=$HOME/.vim/undo
set diffopt=filler,vertical

nmap <C-J> <C-E><C-E>
nmap <C-K> <C-Y><C-Y>
map k gk
map j gj
map <C-S> :w
let g:CommandTFileScanner = 'git'

""""""""""""" BEGIN EASYMOTION CONFIG
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `<Space>{char}{label}`
map <Space> <Plug>(easymotion-bd-f)
map <S-Space> <Plug>(easymotion-bd-f2)
nmap <C-Space> <Plug>(easymotion-overwin-f)

" JK motions: Line motions
map ∆ <Plug>(easymotion-j)
map ˚ <Plug>(easymotion-k)

""""""""""""" END EASYMOTION CONFIG
