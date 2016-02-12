" VIM "
" Configuration for VIM "

" Based on Amix's basic VIM configuration "
" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim "

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface                                                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
colorscheme onedark

" Editor settings "
set encoding=utf8 nobomb
set ffs=unix,dos,mac

" Act like vim, not vi "
set nocompatible

" Enable better history management "
set autoread
set history=500
set so=7

" Enable or improve UI elements "
set wildmenu
set wildignorecase
set ruler
set number
set foldcolumn=1
set hidden
set showcmd
set cmdheight=2
set confirm

" Enable the mouse if applicable "
if has('mouse')
    set mouse=a
endif

" Enable filetype plugins "
filetype indent on
filetype plugin on

function! CurrentMode()
    redraw
    let l:currentMode = mode()

    if currentMode == "n"
        return "NORMAL"
    elseif currentMode == "i"
        return "INSERT"
    elseif currentMode == "R"
        return "REPLACE"
    elseif currentMode == "v"
        return "VISUAL"
    elseif currentMode == "V"
        return "V-LINE"
    elseif currentMode == ""
        return "V-BLOCK"
    else
        return l:mode
    endif
endfunc

set laststatus=2
set statusline=%7*\ %{CurrentMode()}                            " Mode
set statusline+=%7*\ [%n]\                                      " Buffer #
set statusline+=%1*\ %<%F\                                      " File Path
set statusline+=%2*\ %=\%y\                                     " File Type
set statusline+=%4*\ %{&ff}\                                    " Format
set statusline+=%3*\ %{&fenc!=''?&fenc:&enc}%{&bomb?':BOM':''}\ " Encoding : BOM
set statusline+=%5*\ %{&spelllang}\                             " Language
set statusline+=%8*\ %c:%l/%L\ (%p%%)\                          " Column # : Row # / Total
set statusline+=%0*\ \ %m%r%w\ %P\ \                            " Status

" Disable sounds "
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Security "
set modelines=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation                                                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs "
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500

" Enable indentation and wrapping "
set autoindent
set smartindent
set wrap

" Allow backspacing over autoindent, line breaks and start of insert action "
set backspace=eol,start,indent
set nostartofline
set linespace=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search                                                                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use case insensitive search, except when using capital letters "
set ignorecase
set smartcase
set hlsearch
set incsearch

" For regular expressions turn magic on "
set magic
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backups                                                                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable backups since we use VCS "
set nobackup
set nowb
set noswapfile
