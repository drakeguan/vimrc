" SECTION: Vundle load{{{1
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" python-mode
Plugin 'klen/python-mode'
" vim-airline
Plugin 'bling/vim-airline'
" vim-fugitive
Plugin 'tpope/vim-fugitive'
" tabline
Plugin 'mkitt/tabline.vim'
" nerdcommenter
Plugin 'scrooloose/nerdcommenter'
" surround
Plugin 'tpope/vim-surround'
" JSON.vim
Plugin 'elzr/vim-json'
" Vim colorschemes
Plugin 'flazz/vim-colorschemes'
" Markdown Vim Mode
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let g:airline#extensions#tabline#enabled = 1
" }}}1



" SECTION: General Settings{{{1
"============================================================
set nocompatible                        " not compatible with the old-fashion vi mode
set bs=2                                " allow backspacing over everything in insert mode
set history=255                         " keep 255 lines of command line history
set undolevels=255                      " user many muchos levels of undo
set ruler                               " show the cursor position all the time
set autoread                            " auto read when file is changed from outside
set modeline                            " enable modeline
set modelines=5                         " enable modeline
set clipboard=unnamed                   " yank to the system register (*) by default
set showmode                            " Show current mode
set showcmd                             " Show (partial) command in the last line of the screen
set wildchar=<TAB>                      " start wild expansion in the command line using <TAB>
set wildmenu                            " wild char completion menu
set nobackup                            " no *~ backup files
set wildignore=*.o,*.class,*.pyc        " ignore these files while expanding wild chars
set title                               " change the terminal's title
set visualbell                          " don't beep
set noerrorbells                        " don't beep
set tm=500                              " time in milliseconds waited for a key/mapping to complete
syntax on                               " syntax highlight
let mapleader = ","                     " change the mapleader from \ to ,
autocmd! bufwritepost .vimrc source ~/.vimrc " auto reload vimrc when editing it
" }}}1



" SECTION: Search Settings{{{2
set hlsearch                " search highlighting
set incsearch               " incremental search
set showmatch               " Cursor shows matching
set ignorecase              " ignore case when searching
set smartcase               " ignore case if search pattern is all lowercase,case-sensitive otherwise
" }}}2



" SECTION: Color Settings{{{2
set t_Co=256          " 256 color mode
set background=dark
colorscheme solarized
if has("gui_running")
	" GUI color and font settings
	set cursorline        " highlight current line
else
	" terminal color settings
endif
" }}}2



" SECTION: Tab Page Settings{{{2
map <C-t><C-t> :tabnew<CR>
" new tab
map <C-t><C-w> :tabclose<CR>
" close tab

map <C-]> gT
" go to prev tab
map <C-\> gt
" go to next tab
" }}}2



" SECTION: Encoding Settings{{{2
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1
" }}}2



" disable preview of docstring while autocompleting through period.
set completeopt=menu 
" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
