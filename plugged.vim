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
"Plug 'scrooloose/nerdtree'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'mhinz/vim-signify'
" Commands
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fubitive'
Plug 'tpope/vim-rhubarb'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'rking/ag.vim'
Plug 'erickbelfy/rg.vim'
Plug 'vim-scripts/keepcase.vim'
Plug 'vim-scripts/Shortcut-functions-for-KeepCase-script-'
Plug 'mtth/scratch.vim'
Plug 'tpope/vim-speeddating'
Plug 'swaroopch/vim-markdown-preview'
Plug 'skalnik/vim-vroom'
Plug 'mattn/gist-vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-abolish'
Plug 'terryma/vim-multiple-cursors'

" Automatic Helpers
Plug 'alvan/vim-closetag'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'w0rp/ale'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install -g',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'ruby'] }
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'tpope/vim-endwise'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-repeat'
Plug 'editorconfig/editorconfig-vim'
Plug 'MattesGroeger/vim-bookmarks'
"Plug 'Valloric/YouCompleteMe'
"end
" Language Additions
"Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go'
Plug 'AndrewRadev/splitjoin.vim'
"   Ruby
"Plug 'autozimu/LanguageClient-neovim', {
      "\ 'branch': 'next',
      "\ 'do': 'bash install.sh',
      "\ }
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
"   JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
"   Python
Plug 'nvie/vim-flake8'
"   HTML
Plug 'othree/html5.vim'
"   Other Languages
Plug 'jvirtanen/vim-octave'
Plug 'msanders/cocoa.vim'
Plug 'itspriddle/vim-jekyll'
Plug 'tomlion/vim-solidity'
" MatchIt
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
" Libraries required by other plugins
Plug 'vim-scripts/L9'
Plug 'mattn/webapi-vim'

" Initialize plugin system
call plug#end()
