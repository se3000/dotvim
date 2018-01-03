" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
Bundle 'ZoomWin'
if has("gui_macvim")
  Bundle 'kien/ctrlp.vim'
else
  Bundle 'junegunn/fzf'
  Bundle 'junegunn/fzf.vim'
endif
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/file-line'
" UI Additions
Bundle 'vim-airline/vim-airline'
Bundle 'tpope/vim-vinegar'
"Bundle 'scrooloose/nerdtree'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'mhinz/vim-signify'
" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tommcdo/vim-fubitive'
Bundle 'tpope/vim-rhubarb'
Bundle 'godlygeek/tabular'
Bundle 'junegunn/vim-easy-align'
Bundle 'rking/ag.vim'
Bundle 'erickbelfy/rg.vim'
Bundle 'vim-scripts/keepcase.vim'
Bundle 'vim-scripts/Shortcut-functions-for-KeepCase-script-'
Bundle 'scratch.vim'
Bundle 'tpope/vim-speeddating'
Bundle 'swaroopch/vim-markdown-preview'
Bundle 'skalnik/vim-vroom'
Bundle 'mattn/gist-vim'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-abolish'
" Automatic Helpers
Bundle 'alvan/vim-closetag'
Bundle 'IndexedSearch'
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'
"Bundle 'scrooloose/syntastic' "We now have ALE
Bundle 'w0rp/ale'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-endwise'
Bundle 'vim-scripts/matchit.zip'
Bundle 'tpope/vim-repeat'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'MattesGroeger/vim-bookmarks'
"Bundle 'Valloric/YouCompleteMe'
"end
" Language Additions
Bundle 'sheerun/vim-polyglot'
Bundle 'fatih/vim-go'
"   Ruby
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
"   JavaScript
"   Python
Bundle 'nvie/vim-flake8'
Bundle 'jmcantrell/vim-virtualenv'
"   HTML
Bundle 'othree/html5.vim'
"   Other Languages
Bundle 'jvirtanen/vim-octave'
Bundle 'msanders/cocoa.vim'
Bundle 'itspriddle/vim-jekyll'
" MatchIt
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
" Libraries required by other plugins
Bundle 'L9'
Bundle 'mattn/webapi-vim'
