if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source ~/.vim/plugged.vim

" Source initialization files
for file in split(glob('~/.vim/init/*.vim'), '\n')
  exec 'source' file
endfor

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
