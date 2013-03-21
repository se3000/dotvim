" Options inspired by Pivotal's vim config

set guifont=Menlo:h16
set guioptions-=T               " Remove GUI toolbar
set guioptions-=e               " Use text tab bar, not GUI
set guioptions-=rL              " Remove scrollbars
set guicursor=a:blinkon0        " Turn off the blinking cursor

"set notimeout                   " No command timeout
set showcmd                     " Show typed command prefixes while waiting for operator
set mouse=a                     " Use mouse support in XTerm/iTerm.

set expandtab                   " Use soft tabs
set tabstop=2                   " Tab settings
set autoindent
set smarttab                    " Use shiftwidth to tab at line beginning
set shiftwidth=2                " Width of autoindent
set number                      " Line numbers
set nowrap                      " No wrapping
set backspace=indent,eol,start " Let backspace work over anything.
set wildignore+=tags               " Ignore tags when globbing.
set wildignore+=tmp/**             " ...Also tmp files.
set wildignore+=public/uploads/**  " ...Also uploads.
set wildignore+=public/images/**   " ...Also images.
set wildignore+=compiled/**          " ...Also compiled.
" set wildignore+=vendor/**          " ...Also vendor.

set list                        " Show whitespace
if has("gui_running")
  set listchars=trail:·
else
  set listchars=trail:~
endif

set showmatch                   " Show matching brackets
set hidden                      " Allow hidden, unsaved buffers
set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom
set scrolloff=3                 " Scroll when the cursor is 3 lines from edge
set cursorline                  " Highlight current line

set laststatus=2                " Always show statusline

set incsearch                   " Incremental search
set history=1024                " History size
set ignorecase                  " Ignore case by default
set smartcase                   " Smart case-sensitivity when searching (overrides ignorecase)

set autoread                    " No prompt for file changes outside Vim

set swapfile                    " Keep swapfiles
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

set hls                         " search with highlights by default
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Write all writeable buffers when changing buffers or losing focus.
set autowriteall                " Save when doing various buffer-switching things.
autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.
