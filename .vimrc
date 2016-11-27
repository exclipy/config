set nocompatible

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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sickill/vim-monokai'
Plugin 'easymotion/vim-easymotion'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'osyo-manga/unite-quickfix'
Plugin 'airblade/vim-gitgutter'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'Shougo/vimproc.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" END VUNDLE CONFIG

" Enable file type based indent configuration and syntax highlighting.
filetype plugin indent on

if !isdirectory($HOME."/.vim/swap")
    call mkdir($HOME."/.vim/swap", "p")
endif
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "p")
endif

set t_Co=256
syntax on
colorscheme lucius
LuciusLightHighContrast
set nocompatible
set backspace=indent,eol,start
set background=light
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
set dir=$HOME/.vim/swap
set whichwrap=b,s,h,l,<,>,[,]
set nowrap
set linebreak
set shiftwidth=2
set smarttab
set nosmarttab
set tabstop=8
set tabstop=4
set noexpandtab
set expandtab
set guioptions-=T
set wildignore=*.o,*.obj,*.bak,*.class
set spelllang=en_gb
set noerrorbells
set vb t_vb=
set undofile
set undodir=$HOME/.vim/undo
set diffopt=filler,vertical
set number
set cursorline

nmap <space> \
vmap <space> \

nmap <C-J> <C-E><C-E>
nmap <C-K> <C-Y><C-Y>
map k gk
map j gj
map <C-S> :<C-u>w

let g:ctrlp_map = '<leader>t'
let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=histogram")'
map <Leader>d :<C-u>Gdiff master<cr><C-w>l

""""""""""""" BEGIN EASYMOTION CONFIG
let g:EasyMotion_do_mapping=0 " Disable default mappings
let g:EasyMotion_smartcase=1

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `<Space>{char}{label}`
map <leader><Space> <Plug>(easymotion-bd-f)
nmap <Esc><Esc> :<C-u>nohls<cr>
""""""""""""" END EASYMOTION CONFIG

""""""""""""" START AIRLINE CONFIG
set laststatus=2
let g:airline_section_x=''
let g:airline_section_y=''
let g:airline_theme='bubblegum'
""""""""""""" START AIRLINE CONFIG

""""""""""""" START UNITE CONFIG
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nmap <leader>f :<C-u>Unite -start-insert line<CR>
nmap <leader>b :<C-u>Unite buffer<CR>
nmap <leader>u :<C-u>Unite file_mru<CR>
nmap <leader>l :<C-u>Unite location_list<CR>
nmap <leader>q :<C-u>Unite quickfix<CR>
nmap <leader>g :<C-u>Unite script:bash:/usr/local/google/home/kevinww/bin/git5diff.sh<CR>
autocmd FileType unite imap <buffer> <C-c> <Plug>(unite_exit)
autocmd FileType unite nmap <buffer> <C-c> <Plug>(unite_exit)
""""""""""""" END UNITE CONFIG

""""""""""""" START GITGUTTER CONFIG
let g:gitgutter_diff_base='master'
let g:gitgutter_sign_added='+ '
let g:gitgutter_sign_modified='? '
let g:gitgutter_sign_removed='__'
let g:gitgutter_sign_removed_first_line='‾‾'
let g:gitgutter_sign_modified_removed='?_'
let g:gitgutter_map_keys=0
let g:gitgutter_diff_args='--diff-algorithm=histogram'
highlight link GitGutterAdd DiffAdd
highlight link GitGutterChange DiffChange
highlight link GitGutterDelete Underlined
highlight link GitGutterChangeDelete DiffChange
""""""""""""" START GITGUTTER CONFIG
