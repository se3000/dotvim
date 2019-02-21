" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Color
" ---------------
" Turn on Solarized 256 colors if the terminal supports it.
" (Why Solarized doesn't do this properly on its own is unknown.)
if &t_Co == 256
  let g:solarized_termcolors=256
endif

" ---------------
" space.vim
" ---------------
" Disables space mappings in select mode to fix snipMate.
let g:space_disable_select_mode=1

" ---------------
" NERDTree
" ---------------
let g:NERDTreeShowBookmarks=0
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI=1
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  "\&& b:NERDTreeType == "primary") | q | endif

" ---------------
" Session
" ---------------
let g:session_autosave=0
let g:session_autoload=0
nnoremap <leader>os :OpenSession<CR>

" ---------------
" Tabular
" ---------------
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>
nmap <Leader>t> :Tabularize /=>\zs<CR>
vmap <Leader>t> :Tabularize /=>\zs<CR>
nmap <Leader>t- :Tabularize /-<CR>
vmap <Leader>t- :Tabularize /-<CR>
nmap <Leader>t" :Tabularize /"<CR>
vmap <Leader>t" :Tabularize /"<CR>

" ---------------
" ctrlp.vim
" ---------------
" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''

" Allow same file to be opened in multiple tabs
let g:ctrlp_switch_buffer=0

" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10

" ---------------
" surround.vim
" ---------------
" Use # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" Thanks to http://git.io/_XqKzQ
let g:surround_35  = "#{\r}"

" ---------------
" indenthtml
" ---------------
" Setup indenthtml to propertly indent html. Without this, formatting doesn't
" work on html.
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" ---------------
" Gist.vim
" ---------------
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private=1

" ---------------
" MatchTagAlways
" ---------------
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'handlebars' : 1,
    \}

" ---------------
" YouCompleteMe
" ---------------
let g:ycm_complete_in_comments_and_strings=0
let g:ycm_collect_identifiers_from_comments_and_strings=0

" ---------------
" vim-signify
" ---------------
let g:signify_mapping_next_hunk="<leader>sn"
let g:signify_mapping_prev_hunk="<leader>sp"
let g:signify_mapping_toggle_highlight="<nop>"
let g:signify_mapping_toggle="<nop>"

" ---------
" vim-ruby
" ---------
" Turn on syntax highlighting for ruby operators (==, ||, &&, etc)
let ruby_operators=1

" ---------
" vim-jekyll
" ---------
let g:jekyll_post_extension = '.md'

" ---------
" ag
" ---------
let g:ag_prg="ag --path-to-ignore=~/.agignore --vimgrep"

" ---------
"  Flake 8
"  -------
let g:flake8_show_quickfix=1
let g:flake8_show_in_gutter=1

" ---------
"  Closetag
"  -------
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

" ---------
"  Netrw
"  -------
let g:netrw_liststyle = 1

" ---------
"  vim-go
"  -------
let g:go_def_mode = 'godef'
let g:go_fmt_command = 'goimports'
let g:go_auto_sameids = 0

let g:go_highlight_types = 1
let g:go_highlight_fields = 0
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1

let g:go_list_type = "quickfix"

" ---------
"  ale
"  -------
let g:ale_linters = {'go': ['gometalinter']}

let g:ale_go_gometalinter_options =
      \ '--no-config --disable-all --aggregate ' .
      \ '--enable=golint ' .
      \ '--enable=gofmt ' .
      \ '--enable=vet ' .
      \ '--enable=vetshadow ' .
      \ '--enable=errcheck ' .
      \ '--enable=misspell ' .
      \ '--enable=ineffassign ' .
      \ '--exclude="error return value not checked \(defer"'

let g:ale_javascript_eslint_suppress_missing_config = 1

" ---------
" dart
" ---------
let g:dart_format_on_save = 1
let g:dart_style_guide = 2

" ---------
"  language servers: vim-lsc
" --------
let g:lsc_server_commands = {'dart': '/Users/dimroc/.pub-cache/bin/dart_language_server'}
let g:lsc_auto_map = v:true " Use defaults
"let g:lsc_enable_autocomplete = v:false

" ---------
" coc
" ---------

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
