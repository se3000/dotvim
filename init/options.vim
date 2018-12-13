" Options inspired by Pivotal's vim config
set guioptions-=T               " Remove GUI toolbar
set guioptions-=e               " Use text tab bar, not GUI
set guioptions-=rL              " Remove scrollbars
set guicursor=a:blinkon0        " Turn off the blinking cursor

set wildignore+=tags               " Ignore tags when globbing.
set wildignore+=tmp             " ...Also tmp files.
set wildignore+=public/uploads  " ...Also uploads.
set wildignore+=public/images   " ...Also images.
set wildignore+=public/static   " ...Also node_modules.
set wildignore+=compiled        " ...Also compiled.
set wildignore+=node_modules    " ...Also node_modules.
set wildignore+=components      " ...Also components.
set wildignore+=.bundle         " ...Also .bundle.
set wildignore+=vendor          " ...Also vendor.

set showmatch                   " Show matching brackets
set hidden                      " Allow hidden, unsaved buffers
set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom
set cursorline                  " Highlight current line
set laststatus=2                " Always show statusline
set swapfile                    " Keep swapfiles
set undofile                    " Maintain undo history between sessions
set undodir=~/.vim/undodir
set hls                         " search with highlights by default

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Write all writeable buffers when changing buffers or losing focus.
set autowriteall                " Save when doing various buffer-switching things.
autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.
syntax on
