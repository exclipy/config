syntax on
colorscheme desert
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
set noerrorbells
set shiftwidth=2
set shiftwidth=4
set smarttab
set nosmarttab
set tabstop=8
set tabstop=4
set noexpandtab
set expandtab
set guioptions-=T
set guifont=Monospace\ 10
set showtabline=2
set wildignore=*.o,*.obj,*.bak,*.class
set spelllang=en_gb
set autochdir
so $VIMRUNTIME/macros/matchit.vim
if has('autocmd') 
    autocmd GUIEnter * set vb t_vb= 
endif
filetype indent on

nnoremap <Space>    :exec "normal i".nr2char(getchar())."\e"<cr>
nmap <C-J> <C-E><C-E>
nmap <C-K> <C-Y><C-Y>
map k gk
map j gj
map <C-S> :w
filetype plugin indent on
nnoremap <F5> :GundoToggle<CR>

"noremap f e
"noremap p r
"noremap g t
"noremap j y
"noremap l u
"noremap u i
"noremap y o
"noremap ; p
"noremap r s
"noremap s d
"noremap t f
"noremap d g
"noremap n j
"noremap e k
"noremap i l
"noremap o ;
"noremap k n
"
"noremap F E
"noremap P R
"noremap G T
"noremap J Y
"noremap L U
"noremap U I
"noremap Y O
"noremap : P
"noremap R S
"noremap S D
"noremap T F
"noremap D G
"noremap N J
"noremap E K
"noremap I L
"noremap O :
"noremap K N
"
"noremap <C-f> <C-e>
"noremap <C-p> <C-r>
"noremap <C-g> <C-t>
"noremap <C-j> <C-y>
"noremap <C-l> <C-u>
"noremap <C-u> <C-i>
"noremap <C-y> <C-o>
"noremap <C-;> <C-p>
"noremap <C-r> <C-s>
"noremap <C-s> <C-d>
"noremap <C-t> <C-f>
"noremap <C-d> <C-g>
"noremap <C-n> <C-j>
"noremap <C-e> <C-k>
"noremap <C-i> <C-l>
"noremap <C-o> <C-;>
"noremap <C-k> <C-n>
