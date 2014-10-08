set nocompatible

filetype off                  " required

" VUNDLE`

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/syntastic'
Plugin 'jpalardy/vim-slime'
Plugin 'OCamlPro/ocp-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"

" set hidden        " hides buffers instead of closing them 
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set autoindent    " always set autoindenting on
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
filetype plugin indent on " File type detection on,
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
highlight LineNr ctermfg=grey
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
syntax on     " Do syntax hilighting


" ocaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "set rtp+=" . g:opamshare . "/merlin/vimbufsync"


set rtp+=".s:ocamlmerlin."/vimbufsync"

let g:syntastic_ocaml_checkers = ['merlin']
