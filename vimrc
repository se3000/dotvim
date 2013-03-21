" ===========================================
" Who: Jeremy Mack (@mutewinter)
" What: .vimrc of champions
" Version: 2.0 - Now individual config files!
" ===========================================

" All of the plugins are installed with Vundle from this file.
source ~/.vim/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" Source initialization files
for file in split(glob('~/.vim/init/*.vim'), '\n')
  exec 'source' file
endfor

 "Platform (Windows, Mac, etc.) configuration.
"source ~/.vim/platforms.vim
 "All of the Vim configuration.
"source ~/.vim/config.vim
 "All hotkeys, not depedant on plugins, are bound here.
"source ~/.vim/bindings.vim
 "Plugin-specific configuration.
"source ~/.vim/plugin_config.vim
 "Small custom functions.
"source ~/.vim/functions.vim
 "Auto commands.
"source ~/.vim/autocmds.vim
 "Options
"source ~/.vim/options.vim
 "Behaviors for file types and languages
"source ~/.vim/languages.vim
 "Options file to modify the aesthetics of the top tab bar
"source ~/.vim/tabline.vim

"source ~/.vim/fugitive.vim
