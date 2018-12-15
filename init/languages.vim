" Whitespace & highlighting & language-specific config
" ----------------------------------------------------

" Strip trailing whitespace for code files on save
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction

" Go
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" C family
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp silent! :StripTrailingWhiteSpace

" Highlight objective C files
autocmd BufNewFile,BufRead *.h,*.m,*.mm set filetype=objc

" Ruby, Rails
autocmd BufWritePre *.rb,*.yml,*.js,*.css,*.less,*.sass,*.scss,*.less,*.html,*.xml,*.erb,*.haml,*.feature silent! :StripTrailingWhiteSpace
au BufNewFile,BufRead *.worker set filetype=ruby

" Java, PHP
autocmd BufWritePre *.java,*.php,*.feature silent! :StripTrailingWhiteSpace

" Python
autocmd BufWritePre *.py silent! :StripTrailingWhiteSpace
autocmd BufWritePost *.py call Flake8()

" Highlight Jasmine fixture files as HTML
autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" Highlight .es6 files as javascript
autocmd BufRead,BufNewFile *.es6 set filetype=javascript

" Highlight GLSL files
au BufRead,BufNewFile *.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl
autocmd BufWritePre *.frag,*.vert,*.fp,*.vp,*.glsl silent! :StripTrailingWhiteSpace

" Octave syntax
autocmd BufRead,BufNewFile *.m,*.oct set filetype=octave

" Refactor all this file type detection to be in a group like below
" Octave syntax
" augroup filetypedetect
"   au! BufRead,BufNewFile *.m,*.oct set filetype=octave
"   augroup END 

" Consider question/exclamation marks to be part of a Vim word.
autocmd FileType ruby set iskeyword=@,48-57,_,?,!,192-255
autocmd FileType scss set iskeyword=@,48-57,_,-,?,!,192-255

" Insert ' => '
autocmd FileType ruby imap  <Space>=><Space>

" Open all folds in Markdown.
autocmd FileType mkd normal zR
