set nocompatible              " be iMproved, required
filetype off                  " required
"   Vim newest upgrade in MacOSX --- Below Link ----
"   http://stackoverflow.com/questions/7211820/update-built-in-vim-on-mac-os-x

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin goes below here
Plugin 'The-NERD-Tree'
Plugin 'tpope/vim-fugitive' "git wrapper
Plugin 'scrooloose/syntastic' "syntax checking for VIM, 
Plugin 'mattn/emmet-vim' "html auto
Plugin 'Shougo/neocomplcache.vim'
Plugin 'jistr/vim-nerdtree-tabs' "nerdtree tabs
Plugin 'jpo/vim-railscasts-theme' "Railscasts colorscheme
Plugin 'Yggdroot/indentLine' "indenting line
Plugin 'tpope/vim-surround' "word surroundings for brackets, quotes, etc. 
Plugin 'morhetz/gruvbox' "colorscheme gruvbox
Plugin 'tpope/vim-endwise' "End wisely def end block
Plugin 'jiangmiao/auto-pairs' "auto closing brackets
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
syntax enable
"color section ----------------------------------------------
"solarized theme"
set background=dark
"colorscheme solarized "plugin solarized 
let g:molokai_original = 1 "matching original molokai bg
colorscheme gruvbox
let g:gruvbox_invert_tabline=1
let g:gruvbox_contrast_dark='hard' 
"colorscheme railscasts
"color section ends ----------------------------------------
set nu "display numberlines
set autoindent "autoindent
set smartindent "a little bit smarter indent
set laststatus=2 "displaying status bar
"displaying status bar in this format 
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\ 
let g:indentLine_char='|'
let g:indentLine_color_term = 239
set hlsearch "highlight searched words
set showmatch "matching the prenthesis and closing brackets
set ruler "displaying current cursor
set tabstop=2 "displaying tabs of the file in 2 column sizes
set shiftwidth=2 "shifting tabs in 2 spaces when indenting with >
set ts=2 "resizing tabspaces
set expandtab "on pressing tab, insert 2 spaces 
set title "displaying the title of the current file
let g:neocomplcache_enable_at_startup=1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
let g:neocomplcache_enable_smart_case = 1 "use Smartcase
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS "omni listing for css
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags "omni listing for html
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS "omni listing for js
