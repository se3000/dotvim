" vim-session
" https://github.com/xolox/vim-session
:let g:session_command_aliases = 1
:let g:session_autosave_periodic=2
:let g:session_autosave='yes'
:let g:session_autoload='yes'

" Set session folder to the same as vim-startify
:let g:session_directory='~/.vim/session'

" Shortcut to OpenSession, SaveSession taken from
" https://github.com/xolox/vim-session/blob/9e9a6088f0554f6940c19889d0b2a8f39d13f2bb/plugin/session.vim#L169
command! -bar -bang -nargs=? -complete=customlist,xolox#session#complete_names OS call xolox#session#open_cmd(<q-args>, <q-bang>, 'OpenSession')
command! -bar -bang -nargs=? -complete=customlist,xolox#session#complete_names_with_suggestions SS call xolox#session#save_cmd(<q-args>, <q-bang>, 'SaveSession')
