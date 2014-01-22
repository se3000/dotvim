" vim-session
:let g:session_autosave_periodic=2
:let g:session_autosave='yes'
:let g:session_autoload='yes'

" Set session folder to the same as vim-startify
:let g:session_directory='~/.vim/session'

" Shortcut to OpenSession
command OS OpenSession
command SS SaveSession!

" Command + Shit + o shows available sessions
map <D-O> :OpenSession<CR>
