call plug#begin('~/.vim/plugged')

" ---------------
" Plugin Bundles
" ---------------

" Navigation
if has("gui_macvim")
  Plug 'kien/ctrlp.vim'
else
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
endif
Plug 'vim-scripts/FuzzyFinder'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/file-line'
" UI Additions
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-vinegar'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'mhinz/vim-signify'
" Commands
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/vim-easy-align'
Plug 'mileszs/ack.vim'
Plug 'erickbelfy/rg.vim'
Plug 'vim-scripts/keepcase.vim'
Plug 'vim-scripts/Shortcut-functions-for-KeepCase-script-'
Plug 'terryma/vim-multiple-cursors'
" Automatic Helpers
Plug 'alvan/vim-closetag'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install -g',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'ruby'] }
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'tpope/vim-endwise'
Plug 'editorconfig/editorconfig-vim'
Plug 'MattesGroeger/vim-bookmarks'
"   JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
"   HTML
Plug 'othree/html5.vim'
"   Other Languages
Plug 'itspriddle/vim-jekyll'
Plug 'tomlion/vim-solidity'
Plug 'fatih/vim-go'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
" Libraries required by other plugins
Plug 'vim-scripts/L9'
Plug 'mattn/webapi-vim'

" Initialize plugin system
call plug#end()
