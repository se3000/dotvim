" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

Bundle 'xolox/vim-misc'

" Navigation
Bundle 'ZoomWin'
" This fork is required due to remapping ; to :
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'kien/ctrlp.vim'
Bundle 'wincent/Command-T'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/EditPlus'
Bundle 'vim-scripts/EnhancedJumps'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/file-line'
" UI Additions
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'nanotech/jellybeans.vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'mhinz/vim-signify'
Bundle 'mhinz/vim-startify'
" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle 'AndrewRadev/sideways.vim'
Bundle 'dimroc/keepcase.vim'
Bundle 'scratch.vim'
Bundle 'tpope/vim-speeddating'
Bundle 'swaroopch/vim-markdown-preview'
Bundle 'tpope/vim-eunuch'
Bundle 'itspriddle/vim-marked'
Bundle 'skalnik/vim-vroom'
Bundle 'HelpClose'
Bundle 'mattn/gist-vim'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-abolish'
" Automatic Helpers
Bundle 'IndexedSearch'
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'Valloric/MatchTagAlways'
Bundle 'tpope/vim-endwise'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-repeat'
"if version >= 703 && has('patch584')
  "Bundle 'Valloric/YouCompleteMe'
"end
" Language Additions
"   Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
"   JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'briancollins/vim-jst'
"   HTML
Bundle 'nono/vim-handlebars'
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'
"   Other Languages
Bundle 'derekwyatt/vim-scala'
Bundle 'msanders/cocoa.vim'
Bundle 'timcharper/textile.vim'
Bundle 'acustodioo/vim-tmux'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'tpope/vim-cucumber'
" MatchIt
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
" Libraries
Bundle 'L9'
Bundle 'tpope/vim-repeat'
Bundle 'mattn/webapi-vim'
