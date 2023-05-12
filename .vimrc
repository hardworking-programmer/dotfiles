set nocompatible        " disable compatibility mode with vi                       
filetype off            " forces plugin to load correctly
""" enable filetype plugin
"filetype plugin on
"filetype indent on

""" colors
"set termguicolors
set background=dark     " configure vim to use bright colors
syntax on
syntax enable
set showmatch           " highlight matching parenthesis / brackets

""" basic setting
set number
set relativenumber
highlight LineNr guifg=#777777
highlight LineNr guibg=#000000
set guicursor=
set guifont=Monospace\ 10
set autoread            " autoreload the file in vim if it has been changed outside of vim
set backspace=eol,start,indent     " fix for common backspace problem

""" display options
set showmode
set showcmd

" search down into subfolder
" provides tab-completion for all file-related task
set path+=**

" display all matching files when we tab complete
set wildmenu

""" file setting
set encoding=utf-8      " encoding
set wrap                " automatically wrap text that extends beyond the screen length
set ruler               " show position of cursor on statusbar

" set cursorline          " highlight current line
set scrolloff=5         " show 5 lines above & below the cursor
set laststatus=2        " always show status line
set cmdheight=1         " height of command bar
" set mouse=a            " enable mouse
" set wildmenu           " visual autocomplete for command menu
" set lazyredraw         " redraw screen only when we need to
" set visualbell         " blink cursor on error, instead of beeping

""" tab setting
set expandtab           " convert <TAB> key-presses to spaces
set tabstop=4           " width that a <TAB> character displays as
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

""" indention setting
set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')
set shiftwidth=4        " number of spaces to use for each step of (auto)indent

""" disble scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L


""" Sound
" set noerrorbells
" set novisualbell
" set t_vb=
" set tm=500

""" searching
" ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw

"""""""""""""""""""""""
"" Save Text Folding ""
"""""""""""""""""""""""
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

