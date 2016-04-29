"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'steffanc/cscopemaps.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'

filetype indent on
"Nerd tree
map <F2> :NERDTreeToggle <CR>

"Taglist
map <f9> :Tlist<CR>
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

"Airline
set laststatus=2
let g:airline_theme='lucius'
let g:airline#extensions#whitespace#enabled = 0

"vim-better-whitespace
highlight ExtraWhitespace ctermbg=brown

"easymotion
let g:EasyMotion_leader_key='<Space>'

"Ctag
set tags+=/synosrc/SRM-master/ds.base/source/tags

map <F3> :Gblame<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch
"This unsets the "last search pattern" register by hitting return
nnoremap <C-L> :nohlsearch<CR><C-L>

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

" Show number line
set number
" Show cursorline
set cursorline

"set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
hi Comment ctermfg=blue

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

