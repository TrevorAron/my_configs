set exrc
set secure

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"INSTALL PLUGINS WITH :PluginInstall
"Dope autocomplete plugin
Plugin 'Valloric/YouCompleteMe'

Plugin 'nvie/vim-flake8'


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'gmarik/Vundle.vim'
" Nerd Tree
Plugin 'scrooloose/nerdtree'

"Dope autocomplete plugin
"Plugin 'Valloric/YouCompleteMe'

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
set expandtab
set shiftwidth=4
set tabstop=4
set number

"Put a line on the end of the screen
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

"Something about h files
"augroup project
"    autocmd!
"    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
"augroup END

"allows user to use gf to open file whose name is under cursor (good for
"headers. Only need if seperate include directories)
"let &path.="src/include,/usr/include/AL/"
"
"
autocmd FileType make set noexpandtab
set hlsearch
colorscheme desert

" start nerd tree on open file
" autocmd vimenter * NERDTree

"Ctrl + n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR> 

"kill nerdTree if only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

